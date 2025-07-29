FROM php:8.2-fpm

RUN docker-php-ext-install pdo pdo_mysql

RUN groupadd --gid 1000 vscode && useradd --uid 1000 --gid vscode --shell /bin/bash --create-home vscode


WORKDIR /var/www/html
EXPOSE 9000
CMD ["php-fpm"]