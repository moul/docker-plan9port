build:  Dockerfile
	docker build -t plan9port .

release:
	docker tag plan9port moul/plan9port
	docker push moul/plan9port

run:
	docker run -it --rm plan9port
