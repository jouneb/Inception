sleep 10

#on cree le dosier /run/php s'il n'existe pas pour permettre a php-fpm de fonctionner
if [ ! -d "/run/php" ]
then 
    mkdir /run/php
fi

if [ -f /var/www/wordpress/wp-config.php ];
then
    echo "wp-config-sample.php already exist..."
else
    wp core --allow-root download
    #on configure wp et reation du wp-config.php
    wp config create --allow-root \
                     --dbname=$SQL_DATABASE \
                     --dbuser=$SQL_USER \
                     --dbpass=$SQL_PASSWORD \
                     --dbhost=mariadb:3306
   # on config la deuxieme page
    wp core install --allow-root \
                    --url=jbouyer.42.fr/wordpress \
                    --title=Inception \
                    --admin_user=$ADMIN_USER \
                    --admin_password=$ADMIN_PASSWORD \
                    --admin_email==$ADMIN_EMAIL 
                    
    #on ajoute un user
	wp user create $USER_NAME $USER_EMAIL \
			--user_pass=$USER_PASSWORD \
			--allow-root

	chown -R www-data /var/www/wordpress
	chmod -R 755 /var/www/wordpress

	chmod 777 /var/www/wordpress/*.php
fi

/usr/sbin/php-fpm7.3 -F


