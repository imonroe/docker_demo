FROM php:7-apache

LABEL maintainer="ian@ianmonroe.com"

RUN apt-get update && apt-get install -y \
    libxml2

RUN echo "PHP modules installed: " && php -i

RUN docker-php-ext-install zlib zip

RUN cd /var/www && curl -sS https://getcomposer.org/installer -o composer-setup.php && \
php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
rm /var/www/composer-setup.php


COPY start.sh /var/www/start.sh
RUN chmod 775 /var/www/start.sh


CMD ["apache2-foreground"]
