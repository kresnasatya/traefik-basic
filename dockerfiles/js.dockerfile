FROM node:current-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

EXPOSE 8082

CMD [ "node", "htmlFile.js" ]