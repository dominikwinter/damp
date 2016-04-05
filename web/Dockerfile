FROM php:5.6-apache

RUN a2enmod rewrite expires

RUN \
    usermod  -o -u $(stat -c "%u" /var/www/html) www-data \
    groupmod -o -g $(stat -c "%g" /var/www/html) www-data \
    sed -i "/Options/c\  Options Indexes FollowSymLinks" /etc/apache2/apache2.conf \
    echo "date.timezone = UTC" > /usr/local/etc/php/conf.d/date_timezone.ini

VOLUME /var/www/html

CMD ["apache2-foreground"]
