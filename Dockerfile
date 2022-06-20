ARG PHP_IMAGE=8.1
ARG COMPOSER_VERSION=2.3.7
FROM composer:${COMPOSER_VERSION} as composer

FROM php:${PHP_IMAGE}-fpm-alpine3.16

MAINTAINER Gregory LEFER <12687145+glefer@users.noreply.github.com>

WORKDIR /app
RUN apk add --no-cache git

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN cd /tmp \
    &&  wget https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.10/symfony-cli_linux_amd64.tar.gz \
    && tar -zxvf symfony-cli_linux_amd64.tar.gz \
    && mv symfony /usr/local/bin \
    && rm -rf /tmp/*

ENTRYPOINT ["symfony"]
