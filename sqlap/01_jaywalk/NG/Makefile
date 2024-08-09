clean:
	docker compose stop
	docker compose down

up:
	docker compose up -d

psql:
	docker compose exec postgres psql -U postgres -d postgres

conn:
	docker compose exec postgres bash

init:
	@make up
