FROM composer:2

WORKDIR /var/www/html

ARG GROUP_ID
ARG USER_ID

RUN addgroup -g ${GROUP_ID} laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]
