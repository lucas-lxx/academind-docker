FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

COPY ../src .

ARG GROUP_ID
ARG USER_ID

RUN addgroup -g ${GROUP_ID} laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel
