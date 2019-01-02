FROM php:7-apache

LABEL maintainer="ian@ianmonroe.com"

RUN docker-php-ext-install -j$(nproc) mbstring \
    && docker-php-ext-install -j$(nproc) mcrypt \
    && docker-php-ext-install -j$(nproc) xml \
    && docker-php-ext-install -j$(nproc) openssl \
    && docker-php-ext-install -j$(nproc) json \
    && docker-php-ext-install -j$(nproc) phar \
    && docker-php-ext-install -j$(nproc) dom \
    && docker-php-ext-install -j$(nproc) session \
    && docker-php-ext-install -j$(nproc) zlib \
    && docker-php-ext-install -j$(nproc) zip \


RUN cd /var/www && curl -sS https://getcomposer.org/installer -o composer-setup.php && \
php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
rm /var/www/composer-setup.php


COPY start.sh /var/www/start.sh
RUN chmod 775 /var/www/start.sh


CMD ["apache2-foreground"]
