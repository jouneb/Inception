FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt-get install mariadb-server -y
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/conf.sh /var/www/conf.sh
RUN chmod +x /var/www/conf.sh
ENTRYPOINT ["/var/www/conf.sh"]
CMD ["mysqld_safe"]