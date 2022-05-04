all:
	mkdir -p ./srcs/requirements/mariadb/database
	mkdir -p ./srcs/requirements/wordpress/content
	sudo docker-compose -f ./srcs/docker-compose.yml up

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean:
	sudo docker-compose -f ./srcs/docker-compose.yml down --volumes --rmi all

re: fclean all

nginx:
	sudo docker-compose -f ./srcs/docker-compose.yml build nginx

wordpress:
	sudo docker-compose -f ./srcs/docker-compose.yml build wordpress

mariadb:
	sudo docker-compose -f ./srcs/docker-compose.yml build mariadb

build:
	sudo docker-compose -f ./srcs/docker-compose.yml build