FROM php:7.2-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql 
RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev
