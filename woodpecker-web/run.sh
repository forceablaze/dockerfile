#!/bin/bash
docker run -d --rm  --name wdpk-web -v $(pwd)/woodpecker:/etc/nginx/conf.d/woodpecker.conf:ro  -v $(pwd)/dist:/usr/share/woodpecker:ro \
  -p 8080:8080 nginx
