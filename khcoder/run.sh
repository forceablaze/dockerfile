#!/bin/bash

#docker run -d  -p 6080:80 -p 5900:5900 -e RESOLUTION=1280x720 -v /dev/shm:/dev/shm khcoder
docker run --name khcoder \
           -p 3389:3389 \
           -p 2222:22 \
           -v $(pwd)/createusers:/root/createusers.txt \
           -v $(pwd)/home:/home \
           -dit --restart unless-stopped \
           khcoder
