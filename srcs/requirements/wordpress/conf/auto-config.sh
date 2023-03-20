sleep 10
if [ ! -f "/run/php"]
then
    mkdir /run/php
    touch /run/php/php7.3-fpm.pid
fi

if [ -f "/var/www/wordpress/wp-config.php"];
then
    echo "wp-config.php already exist..."
else
    wget https://ra.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    cd /var/www/wordpress
    wp core download --allow-root
    mv /var/www/wp-config.php /var/wwww/wordpress

    wp core install --url=jbouyer.42.fr/wordpress \
    --title = Incption \
    --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email = $ADMIN_EMAIL \