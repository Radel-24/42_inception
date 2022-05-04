#!/bin/bash
sleep 5
cd /var/www/html
wp core download --allow-root
cp /wp-config.php /var/www/html/
wp core install --allow-root --url=$HODO --title=42Inception42 --admin_user=$WP_USER --admin_password=$WP_PASS --admin_email=info@example.com
mkdir /run/php
cd -
php-fpm7.3 -F