FROM debian:buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y mariadb-server

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
