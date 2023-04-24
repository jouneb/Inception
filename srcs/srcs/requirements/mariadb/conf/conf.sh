#!/bin/bash

service mysql start
sleep 1
mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};"
#cree base de donnee, seulement si elle n'existe pas deja
mysql -e "CREATE USER IF NOT EXISTS ${SQL_USER}@localhost IDENTIFIED BY '${SQL_PASSWORD}';"
#cree un utilisateur MySQL 
mysql -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
#accord a l'utilisateur tous les privileges.
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
#moifie le mot de pase de l'utilisateur root
mysqladmin -u root -p$SQL_ROOT_PASSWORD flush-privileges
#rafraichit les privileges
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown 
#on redemarre pour que tout soit effectif
exec mysqld_safe
