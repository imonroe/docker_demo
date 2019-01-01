FROM php:7-apache

LABEL maintainer="ian@ianmonroe.com"

COPY start.sh /var/www/start.sh
RUN chmod 775 /var/www/start.sh

CMD ["apache2-foreground"]
