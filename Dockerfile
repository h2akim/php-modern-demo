FROM serversideup/php:8.2-fpm-nginx

ENV S6_CMD_WAIT_FOR_SERVICES=1

# copy entrypoint
COPY --chmod=755 ./docker/ /etc/entrypoint.d/

# copy application code
COPY . /var/www/html

# set working directory
WORKDIR /var/www/html

# Change to root, so we can do root things
USER root

# set permissions
RUN chown -R www-data:www-data /var/www/html

# As root, run the docker-php-serversideup-s6-init script
RUN docker-php-serversideup-s6-init

# Change to www-data user
USER www-data
