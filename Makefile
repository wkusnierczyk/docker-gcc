SHELL = /usr/bin/env bash

DOCKER_USER = wkusnierczyk
DOCKER_NAME = gcc
DOCKER_TAG = 7.2.0-1

.PHONY:
docker-build:
	docker build -t $(DOCKER_USER)/$(DOCKER_NAME) -f Dockerfile .

.PHONY:
docker-push:
	docker tag $(DOCKER_USER)/$(DOCKER_NAME) $(DOCKER_USER)/$(DOCKER_NAME):$(DOCKER_TAG)
	docker push $(DOCKER_USER)/$(DOCKER_NAME)

.PHONY:
docker-run:
	docker run -it -v $$PWD:$$PWD -w $$PWD $(DOCKER_USER)/$(DOCKER_NAME)
