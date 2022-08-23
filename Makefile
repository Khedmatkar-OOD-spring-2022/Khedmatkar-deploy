run:
	docker-compose up --no-deps --build
start:
	docker-compose up
build:
	rm -rf ./back
	git clone git@github.com:Khedmatkar-OOD-spring-2022/khedmatkar-Backend.git ./back
	rm -rf ./nginx/app
	git clone git@github.com:Khedmatkar-OOD-spring-2022/khedmatkar-UI.git ./nginx/app
	docker-compose up --no-deps --build
stop:
	docker-compose stop
clean:
	docker-compose down -v --rmi local --remove-orphans