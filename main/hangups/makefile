#!/usr/bin/make
## makefile

.PHONY: build clean

name = radiganm/hangups

build: 
	docker build -t $(name) .

clean: 
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}
	docker images -a --no-trunc | grep $(name) | awk '{print$$3}' | xargs -I{} docker rmi -f {}

## *EOF*
