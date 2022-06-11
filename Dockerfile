ARG PHP_IMAGE=8.1

FROM php:${PHP_IMAGE}-fpm-alpine3.16

MAINTAINER Gregory LEFER <12687145+glefer@users.noreply.github.com>

WORKDIR /app
RUN apk add --no-cache git

RUN cd /tmp \
    &&  wget https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.10/symfony-cli_linux_amd64.tar.gz \
    && tar -zxvf symfony-cli_linux_amd64.tar.gz \
    && mv symfony /usr/local/bin \
    && rm -rf /tmp/*

ENTRYPOINT ["symfony"]

