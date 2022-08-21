run:
	docker-compose up --no-deps --build
build:
	rm -rf ./back
	rm -rf ./front
	git clone git@github.com:Khedmatkar-OOD-spring-2022/khedmatkar-Backend.git ./back
	git clone git@github.com:Khedmatkar-OOD-spring-2022/khedmatkar-UI.git ./front
	npm --prefix ./front i
	npm --prefix ./front run build
	rm -rf ./nginx/html
	mv ./front/build ./nginx/html
	docker-compose up --no-deps --build
stop:
	docker-compose stop
clean:
	docker-compose down -v --rmi local --remove-orphans