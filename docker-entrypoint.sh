#!/bin/bash
set -e

echo "=== Starting container entrypoint ==="

# 1. Resolve Apache MPM conflicts (strictly ensure only mpm_prefork is loaded)
echo "Configuring Apache MPM..."
rm -f /etc/apache2/mods-enabled/mpm_*.load /etc/apache2/mods-enabled/mpm_*.conf || true
ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load
ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf
ln -sf /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

# 2. Configure dynamic port from Railway ($PORT)
PORT="${PORT:-80}"
echo "Configuring Apache to listen on port ${PORT}..."
sed -i "s/Listen [0-9]*/Listen ${PORT}/g" /etc/apache2/ports.conf
sed -i "s/<VirtualHost \*:[0-9]*>/<VirtualHost *:${PORT}>/g" /etc/apache2/sites-available/000-default.conf

# 3. Source apache envvars if present
if [ -f /etc/apache2/envvars ]; then
    . /etc/apache2/envvars
fi

# Clean any existing apache pid
rm -f /var/run/apache2/apache2.pid /var/run/apache2/httpd.pid || true

# 4. Initialize database if connected to Railway MySQL
if [ -n "$MYSQLHOST" ]; then
    echo "Running database initializer..."
    php /var/www/html/init-db.php || true
fi

# 5. Launch Apache using the official apache2-foreground wrapper
echo "Starting Apache on port ${PORT}..."
exec apache2-foreground
