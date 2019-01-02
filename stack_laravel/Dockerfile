FROM php:7-apache

LABEL maintainer="ian@ianmonroe.com"

RUN apt-get update && apt-get install -y \
    libzip-dev

RUN echo "PHP modules installed: " && php -i

#First we try to install your extension, it will fail here so force exit code 0 to keep Dockerfile processing.
#We do this to have the extension files downloaded for step 2
RUN docker-php-ext-install zlib; exit 0
#Now we rename the in step 1 downloaded file to desired filename
RUN cp /usr/src/php/ext/zlib/config0.m4 /usr/src/php/ext/zlib/config.m4
#And try to install extension again, this time it works
RUN docker-php-ext-install zlib zip

RUN cd /var/www && curl -sS https://getcomposer.org/installer -o composer-setup.php && \
php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
rm /var/www/composer-setup.php

# copy the directory into the container so we can build our app before the volume is there.
COPY src /var/www/html

COPY start.sh /var/www/start.sh
RUN chmod 775 /var/www/start.sh
RUN /var/www/start.sh

CMD ["apache2-foreground"]
