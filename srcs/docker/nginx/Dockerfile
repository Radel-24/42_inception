FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nginx

COPY ./default.conf /etc/nginx/conf.d/nginx.conf

CMD ["nginx", "-g", "daemon off;"]