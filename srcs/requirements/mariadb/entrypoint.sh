#!/bin/bash

if [ ! -d "/var/lib/mysql/wordpress_data" ]; then
echo "before dir does not exist"

service mysql start
sleep 1

mysql -u root <<SHIT
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON wordpress_data.* TO '$DB_USER'@'%';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$DB_PASS_ROOT');
SHIT

service mysql stop 
sleep 1
echo "done dir does not exist"

else
echo "before dir does exist"
fi

mysqld_safe
