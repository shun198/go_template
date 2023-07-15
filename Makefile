CONTAINER_NAME = app
RUN_APP = docker-compose exec $(CONTAINER_NAME)

prepare:
	docker-compose run --rm front npm install
	docker-compose up -d --build

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down