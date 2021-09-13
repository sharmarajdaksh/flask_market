FLASK_APP=main.py
FLASK_DEBUG=1

.PHONY: run
run:
	FLASK_APP=$(FLASK_APP) \
	FLASK_DEBUG=$(FLASK_DEBUG) \
		flask run

mysql:
	-docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=123 -p 3306:3306 mysql:latest
	docker container start mysql
