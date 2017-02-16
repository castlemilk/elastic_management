docker service create \
  --name my-busybox-elastictack \
  --network elasticstack_elasticsearch-backend\
  busybox \
  sleep 3000
