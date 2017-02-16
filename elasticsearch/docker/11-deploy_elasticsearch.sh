#!/bin/sh
docker stack deploy -c docker-compose-min.yml elasticstack
docker service update --endpoint-mode=dnsrr elasticstack_elasticsearch
docker service scale elasticstack_elasticsearch=3
docker service scale elasticstack_nginx=3
docker service scale elasticstack_logstash=3
