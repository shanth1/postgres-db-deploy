up:
	docker compose up -d

in:
	docker exec -it psql bash

stop: 
	docker stop psql
	docker rm psql

#psql -U admin -d meta