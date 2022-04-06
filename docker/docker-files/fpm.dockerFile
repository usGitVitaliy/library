FROM php:7.4.3-fpm

RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/library.com

RUN groupadd --gid 1000 project_user && useradd --uid 1000 --gid project_user --shell /bin/bash project_user
USER project_user
