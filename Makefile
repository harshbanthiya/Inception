NAME = inception

# .PHONY : all
all	:	$(NAME)

$(NAME) :
	sed -i "" 's/INSTALL=0/INSTALL=1/g' srcs/.env
	mkdir -p ~/hbanthiy/data/wordpress ~/hbanthiy/data/mariaDB
	docker-compose -f srcs/docker-compose.yml up --force-recreate --build -d 

# .PHONY : clean
clean	:
	sed -i "" 's/INSTALL=1/INSTALL=0/g' srcs/.env
	docker-compose -f srcs/docker-compose.yml down

# .PHONY : fclean 
fclean : clean 
	rm -rf ~/hbanthiy/data/wordpress/* ~/hbanthiy/data/mariaDB/*
	docker volume rm srcs_volume-mariadb srcs_volume-wordpress

re : fclean all 

log : 
	docker-compose -f srcs/docker-compose.yml logs

ps : 
	docker-compose -f srcs/docker-compose.yml ps

.PHONY : all clean fclean re log ps 