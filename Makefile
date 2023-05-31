build:
	docker-compose up -d --build

up: build ps

restart:
	docker-compose restart web

down:
	docker-compose down

enter:
	docker-compose exec web ash

logs:
	docker-compose logs -f web

ps:
	docker-compose ps
	