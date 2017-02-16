#!/bin/sh
docker service create --mode global \
--name proxy -p 80:80 \
--network elasticsearch-frontend \
--network elasticsearch-backend  \
--mount type=bind,src=/var/run/docker.sock,target=/tmp/docker.sock:ro \
jwilder/nginx-proxy
