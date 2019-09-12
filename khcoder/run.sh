#!/bin/bash

docker run -d  -p 6080:80 -p 5900:5900 -e RESOLUTION=1280x720 -v /dev/shm:/dev/shm khcoder
