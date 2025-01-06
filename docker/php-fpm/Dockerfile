FROM ubuntu:22.04
FROM php:8.2-fpm
WORKDIR "/application"

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        git \
        nodejs \
        npm \
        libonig-dev \
        libxml2-dev \
        libzip-dev \
        zip \
        unzip \
        libzip-dev \
        libfreetype6-dev \ 
        libjpeg62-turbo-dev \ 
        libpng-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN  docker-php-ext-install bcmath \
    gd \
    intl \
    pdo_mysql \
    zip \
    exif \
    posix \
    pcntl