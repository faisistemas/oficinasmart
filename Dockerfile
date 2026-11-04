FROM php:8.1-apache

# 1. Instalar dependencias do sistema
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    zlib1g-dev \
    zip \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# 2. Configurar e instalar extensoes PHP necessarias
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd mysqli pdo_mysql zip

# 3. Configurar Apache
RUN a2enmod rewrite \
    && sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

# 4. Copiar arquivos da aplicacao
COPY --chown=www-data:www-data . /var/www/html/

# 5. Garantir diretorios de cache e logs com permissoes
RUN mkdir -p /var/www/html/application/cache /var/www/html/application/logs \
    && chmod -R 777 /var/www/html/application/cache /var/www/html/application/logs

ENV PORT=80
EXPOSE 80

CMD sh -c "sed -i \"s/Listen 80/Listen \${PORT:-80}/g\" /etc/apache2/ports.conf && sed -i \"s/:80/:\${PORT:-80}/g\" /etc/apache2/sites-available/000-default.conf && apache2-foreground"
