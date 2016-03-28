FROM php:5.6-apache

RUN a2enmod rewrite expires

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/*

RUN sed -i "/Options/c\  Options Indexes FollowSymLinks" /etc/apache2/apache2.conf
RUN echo "date.timezone = UTC" > /usr/local/etc/php/conf.d/date_timezone.ini

RUN chown -R www-data:www-data /var/www/html

VOLUME /var/www/html

CMD ["apache2-foreground"]