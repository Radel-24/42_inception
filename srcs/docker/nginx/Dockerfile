FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nginx && \
	apt-get install openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=DE/ST=Baden Wuerrtemberg/L=Heilbronn/O=42Heilbronn/OU=Student/CN=radelwar.42.fr/emailAddress=radelwar@student.42heilbronn.de"

COPY ./default.conf /etc/nginx/conf.d/nginx.conf

CMD ["nginx", "-g", "daemon off;"]