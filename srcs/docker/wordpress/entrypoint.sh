#!/bin/bash
cd /var/www/html
wp core download --allow-root
cp /wp-config.php /var/www/html/
#while true 
#do
#echo "he"
#done
#wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS 
wp core install --allow-root --url=example.com --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com
mkdir /run/php
cd -
php-fpm7.3 -F