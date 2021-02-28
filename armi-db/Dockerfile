FROM  mariadb

MAINTAINER meow

COPY utf8mb4.cnf /etc/mysql/conf.d/

ENV MYSQL_ROOT_PASSWORD=1234
#ENV MYSQL_DATABASE=Demo

COPY DDL.sql /docker-entrypoint-initdb.d/ddl.sql
COPY DML.sql /docker-entrypoint-initdb.d/dml.sql

WORKDIR /data

EXPOSE 3306