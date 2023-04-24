
all : up

up:
	@docker-compose -f srcs/docker-compose.yml up -d

down : 
	@docker-compose -f srcs/docker-compose.yml down

clean: down
	@docker image rm -f srcs-wordpress srcs-mariadb srcs-nginx

fclean: clean
	@docker volume rm -f srcs_mariadb srcs_wordpress
	# @docker system prune -af

re: fclean all

mariadb: 
		@docker exec -it mariadb bash

nginx:
		@docker exec -it nginx bash

wordpress:
		@docker exec -it wordpress bash

.PHONY : all clean fclean up down re mariadb wordpress nginx