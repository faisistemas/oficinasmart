FROM php:8.1-apache

# Baixar o instalador oficial e compilar as extensões necessárias
RUN curl -sSLf -o /usr/local/bin/install-php-extensions https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions \
    && chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions gd mysqli pdo_mysql zip \
    && a2enmod rewrite \
    && sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

# Copiar arquivos do projeto (com application/vendor pré-instalado)
COPY . /var/www/html/

# Permissões de escrita para cache e logs
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && chmod -R 777 /var/www/html/application/cache /var/www/html/application/logs

ENV PORT=80
EXPOSE 80

CMD sh -c "sed -i \"s/Listen 80/Listen \${PORT:-80}/g\" /etc/apache2/ports.conf && sed -i \"s/:80/:\${PORT:-80}/g\" /etc/apache2/sites-available/000-default.conf && apache2-foreground"
