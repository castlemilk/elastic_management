#!/bin/sh
docker service create \
  --replicas 3 \
  --name my-web \
  --network elasticsearch-frontend \
  nginx
