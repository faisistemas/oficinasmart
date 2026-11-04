FROM php:8.1-apache

# Instalar dependencias e extensoes sem estourar memoria (-j$(nproc) causava OOM)
RUN apt-get update && apt-get install -y --no-install-recommends \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    zlib1g-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install zip \
    && a2enmod rewrite \
    && sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY --chown=www-data:www-data . /var/www/html/

RUN mkdir -p /var/www/html/application/cache /var/www/html/application/logs \
    && chmod -R 777 /var/www/html/application/cache /var/www/html/application/logs

ENV PORT=80
EXPOSE 80

CMD sh -c "sed -i \"s/Listen 80/Listen \${PORT:-80}/g\" /etc/apache2/ports.conf && sed -i \"s/:80/:\${PORT:-80}/g\" /etc/apache2/sites-available/000-default.conf && apache2-foreground"
