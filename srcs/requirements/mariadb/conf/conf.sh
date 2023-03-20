#!/bin/bash

service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS \'${sql_user}\'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES N \'${SQL_DATABASE}\'.*TO \'${SQL_USER}\'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -u root -p$SQL_ROOT_PASSWORD flush-privileges
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown 
exec mysqld_safe