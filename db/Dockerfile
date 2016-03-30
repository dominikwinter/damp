FROM mariadb

RUN usermod  -u  20 mysql
RUN groupmod -g 501 mysql

RUN cat /etc/passwd > /var/lib/mysql/p.txt
RUN cat /etc/group > /var/lib/mysql/g.txt
RUN ls -la /var/lib/mysql > /var/lib/mysql/l.txt

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["mysqld"]