PORT := 54321
USERNAME := admin
PASSWORD := 123
DB := mata

up:
	docker run --name psql -p $(PORT):5432 -e POSTGRES_USER=$(USERNAME) -e POSTGRES_PASSWORD=$(PASSWORD) -e POSTGRES_DB=$(DB) -d postgres:13.3

in:
	docker exec -it psql bash

stop: 
	docker stop psql
	docker rm psql

#psql -U admin -d meta