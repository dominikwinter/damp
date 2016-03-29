FROM php:5.6-apache

RUN a2enmod rewrite expires

RUN sed -i "/Options/c\  Options Indexes FollowSymLinks" /etc/apache2/apache2.conf
RUN echo "date.timezone = UTC" > /usr/local/etc/php/conf.d/date_timezone.ini

RUN chown -R www-data:www-data /var/www/html

VOLUME /var/www/html

CMD ["apache2-foreground"]
