FROM php:8-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

COPY src .

ARG GROUP_ID=1000
ARG USER_ID=1000

RUN addgroup -g ${GROUP_ID} laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN chown -R laravel:laravel /var/www/html

USER laravel
