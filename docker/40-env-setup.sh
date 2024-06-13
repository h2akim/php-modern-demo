#!/bin/sh

# set database settings
sed -i "s|DB_CONNECTION=sqlite|DB_HOST=$DB_CONNECTION|g" /var/www/html/.env
sed -i "s|DB_HOST=|DB_HOST=$DB_HOST|g" /var/www/html/.env
sed -i "s|DB_PORT=|DB_PORT=$DB_PORT|g" /var/www/html/.env
sed -i "s|DB_DATABASE=/var/www/html/database/database.sqlite|DB_DATABASE=$DB_DATABASE|g" /var/www/html/.env
sed -i "s|DB_USERNAME=|DB_USERNAME=$DB_USERNAME|g" /var/www/html/.env
sed -i "s|DB_PASSWORD=|DB_PASSWORD=$DB_PASSWORD|g" /var/www/html/.env

cat /var/www/html/.env
