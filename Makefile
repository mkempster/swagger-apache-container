run:
	docker run -it -p 80:80 mkempster/swagger
build:
	docker build -t mkempster/swagger .