FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql

RUN a2enmod rewrite

COPY . /workspace

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN chown -R www-data:www-data /workspace
RUN chmod -R 755 /workspace

EXPOSE 80

CMD ["apache2-foreground"]