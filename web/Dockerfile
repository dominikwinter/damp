FROM debian:testing
MAINTAINER Dominik Winter <info@edge-project.org>

# prevent warnings
ENV TERM=xterm DEBIAN_FRONTEND=noninteractive

# install apache2 and php7
RUN \
    apt-get update &&                               \
    apt-get install --no-install-recommends -y      \
        apache2                                     \
        libapache2-mod-php7.0                       \
        php7.0                                      \
        php7.0-cli                                  \
        php7.0-curl                                 \
        php7.0-gd                                   \
        php7.0-json                                 \
        php7.0-mbstring                             \
        php7.0-mcrypt                               \
        php7.0-pdo                                  \
        php7.0-pdo-mysql                            \
        php7.0-pdo-pgsql                            \
        php7.0-pdo-sqlite                           \
        php7.0-phar                                 \
        php7.0-tokenizer                            \
        php7.0-xml                                  \
        php7.0-zip

# configurations
RUN \
    mkdir -p /var/www/html ;\
    chown -R www-data:www-data /var/www/html ;\
    sed -ie "\
        s/^;?\s*cgi\.fix_pathinfo\s*=.*$/cgi.fix_pathinfo = 0/;\
        s/^;?date.timezone\s*=.*$/date.timezone = Europe\/Berlin/;\
    " /etc/php/7.0/apache2/php.ini ;\
    echo "\n\
<IfModule php7_module>\n\
    AddType application/x-httpd-php .php .phtml .php3 .php4 .php5 .php7\n\
</IfModule>\n\
" >> /etc/apache2/mods-enabled/php7.0.conf ;\
    sed -ie "s/^#export APACHE_ARGUMENTS.*$/export APACHE_ARGUMENTS='-D FOREGROUND'/" /etc/apache2/envvars ;\
    echo "ServerName localhost" > /etc/apache2/conf-enabled/servername.conf

# enable mods
RUN a2dismod mpm_event && a2enmod mpm_prefork rewrite expires headers

WORKDIR /var/www/html
VOLUME /var/www/html

EXPOSE 80

COPY web-init.sh /
RUN chmod +x /web-init.sh
ENTRYPOINT ["/web-init.sh"]
