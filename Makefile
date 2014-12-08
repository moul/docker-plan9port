build:  Dockerfile
	docker build -t plan9port .

release: tag
	docker tag node moul/plan9port
	docker push moul/plan9port

run:
	docker run -it --rm plan9port
