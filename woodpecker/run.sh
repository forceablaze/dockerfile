#!/bin/bash
PWD=$(pwd)

docker run -d --rm --name woodpecker -p 8000:8000 \
	-v /etc/localtime:/etc/localtime:ro \
	-v $PWD/db:/var/lib/woodpecker/woodpecker/db \
	-v $PWD/media:/var/lib/woodpecker/woodpecker/media \
	-it woodpecker:latest
