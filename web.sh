#!/bin/bash

if ! grep -q "stretch" /etc/issue; then
    WWW_DIR=/var/www/html
    WWW_USER=www-data
    WWW_GROUP=www-data

    sed -ie "
        s/\${APACHE_RUN_USER}/$WWW_USER/g;
        s/\${APACHE_RUN_GROUP}/$WWW_GROUP/g;
    " /etc/apache2/apache2.conf

    HOST_UID=$(stat -c "%u" $WWW_DIR)
    HOST_GID=$(stat -c "%g" $WWW_DIR)

    usermod  -o -u $HOST_UID $WWW_USER
    groupmod -o -g $HOST_GID $WWW_GROUP
fi

service apache2 start

# keep container running if apache fails
tail -f /var/log/dmesg
