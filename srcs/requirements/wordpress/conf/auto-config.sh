sleep 10

if [ -f "/var/www/wordpress/wp-config.php"];
then
    echo "wp-config-sample.php already exist..."
else
    cd /var/www/wordpress
    wp config create --allow-root \
                     --dbname=$SQL_DATABASE \
                     --dbuser=$SQL_USER \
                     --dbpass=$SQL_PASSWORD \
                     --dbhost=mariadb:3306 --path='/var/www/wordpress'
fi

#reste a faire la config de la deuxieme page automatique avec wp core install et ajouter un autre user aec la commande wp user create
#aussi copier le fichier aut_confi.sh dans le continer et l'executer avec ENTRYPOINT
#rajouter la secu avec la creation du dossier /run/php s'il n'existe pas.
#et on lance php-fpm avec la commande /usr/sbin/php-fpm7.3 -F