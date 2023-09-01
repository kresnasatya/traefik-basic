FROM php:8.2-fpm-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 8083

CMD [ "/usr/local/bin/php", "-S", "localhost:8083" ]