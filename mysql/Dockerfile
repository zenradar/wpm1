FROM mysql:8.0

ADD wildfly.sql /docker-entrypoint-initdb.d/script.sql

ENV MYSQL_DATABASE wildfly
ENV MYSQL_RANDOM_ROOT_PASSWORD yes
ENV MYSQL_USER wildfly
ENV MYSQL_PASSWORD wildfly

VOLUME mysql-data-beta:/var/lib/mysql

EXPOSE 3306
