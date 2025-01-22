FROM composer:2

WORKDIR /var/www/html

ARG GROUP_ID=1000
ARG USER_ID=1000

RUN addgroup -g ${GROUP_ID} laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
