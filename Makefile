up:
	docker compose up -d

in:
	docker exec -it psql bash

logs: 
	docker logs psql

stop: 
	docker stop psql
	docker rm psql

#psql -U admin -d meta