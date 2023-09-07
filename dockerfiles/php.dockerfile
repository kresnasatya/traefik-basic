FROM php:8.2-fpm-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 8081

# Set host value to 0.0.0.0 to listen to any host outside docker
# Link: https://serverfault.com/questions/1084915/still-confused-why-docker-works-when-you-make-a-process-listen-to-0-0-0-0-but-no
CMD [ "/usr/local/bin/php", "-S", "0.0.0.0:8081" ]