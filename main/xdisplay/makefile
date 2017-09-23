#!/usr/bin/make
## makefile
##
## Copyright 2016 Mac Radigan
## All Rights Reserved

.PHONY: build clean

name = radiganm/xdisplay

ssh-port = 9003
#ssh-key  = ~/.ssh/id_rsa
ssh-key = $(shell readlink -f ~/.ssh/id_rsa)

build: 
	-mkdir -p ./security
	rsync -avh $(ssk-key) ./security/
	docker build -t $(name) .

clean: 
	docker ps -a --no-trunc | grep $(name) | awk '{print$$1}' | xargs -I{} docker stop {}
	docker images -a --no-trunc | grep $(name) | awk '{print$$3}' | xargs -I{} docker rmi -f {}

demo: 
	Xephyr -ac -br -resizeable -terminate -reset :3 2>/dev/null 1>/dev/null &
	docker run -it --ipc=host --pid=host -e DISPLAY=:3 -e $(XAUTHORITY) -v /tmp:/tmp --security-opt seccomp=unconfined $(name) xdisplay

connect:
	ssh -A -X -i $(ssh-key) -p $(ssh-port) dev@localhost

## *EOF*
