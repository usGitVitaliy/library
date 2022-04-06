FROM composer
FROM php:7.4.3-fpm
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt-get update && apt-get install -y \
    git \
    zip
#    unzip \

RUN groupadd --gid 1000 project_user && \
    useradd --uid 1000 --gid project_user --shell /bin/bash --create-home project_user
USER project_user

WORKDIR /var/www/library.com
