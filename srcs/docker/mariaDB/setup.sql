CREATE DATABASE wordpress_data;
CREATE USER 'inception'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress_data.* TO 'inception'@'%';
FLUSH PRIVILEGES;