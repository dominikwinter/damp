#!/bin/bash

WWW_DIR=/var/www/html
WWW_USER=www-data
WWW_GROUP=www-data

HOST_UID=$(stat -c "%u" $WWW_DIR)
HOST_GID=$(stat -c "%g" $WWW_DIR)

usermod  -o -u $HOST_UID $WWW_USER
groupmod -o -g $HOST_GID $WWW_GROUP

sed -i "/Options/c\  Options Indexes FollowSymLinks" /etc/apache2/apache2.conf
echo "date.timezone = UTC" > /usr/local/etc/php/conf.d/date_timezone.ini

apache2-foreground
