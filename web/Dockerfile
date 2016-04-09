FROM php:apache
MAINTAINER Dominik Winter <info@edge-project.org>

# docker-compose down; sleep 1; docker-compose rm -f; sleep 1; docker rmi damp_web; docker-compose up

RUN a2enmod rewrite expires status headers

VOLUME /var/www/html

COPY web-init.sh /
RUN chmod +x /web-init.sh
ENTRYPOINT ["/web-init.sh"]

