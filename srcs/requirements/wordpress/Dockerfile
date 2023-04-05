FROM debian:buster
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install wget

#install php et copie le dossier de config qui vient de etc/php/7.3 et que j'ai modif
RUN apt-get install -y php7.3 php-fpm php-mysql mariadb-client
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress

#install wp cli
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/auto-config.sh /var/www/
WORKDIR /var/www/wordpress

CMD ["sh", "/var/www/auto-config.sh"]