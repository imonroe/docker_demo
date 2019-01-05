#!/bin/bash

# ----------------------------------------------------------------------
# Create the .env file if it does not exist.
# ----------------------------------------------------------------------

if [[ ! -f "/var/www/html/.env" ]] && [[ -f "/var/www/html/.env.example" ]];
then
cp /var/www/html/.env.example /var/www/html/.env
chown 1000 .env
fi

# ----------------------------------------------------------------------
# Run Composer
# ----------------------------------------------------------------------

if [[ ! -d "/var/www/html/vendor" ]];
then
cd /var/www/html
composer install --prefer-dist
composer dump-autoload -o
fi

# link the storage directory
cd /var/www/html
php artisan storage:link


# ----------------------------------------------------------------------
# Start supervisord
# ----------------------------------------------------------------------

# exec /usr/bin/supervisord -n -c /etc/supervisord.conf
