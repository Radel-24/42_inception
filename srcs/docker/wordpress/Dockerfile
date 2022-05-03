FROM debian:buster

COPY ./wp-config.php /

RUN apt-get update -y
RUN apt-get install -y  php7.3 php-mysqli php-fpm mariadb-client wget
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./www.conf /etc/php/7.3/fpm/pool.d

COPY ./entrypoint.sh ./
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ./entrypoint.sh
