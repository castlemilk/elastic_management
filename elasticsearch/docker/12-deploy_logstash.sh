#!/bin/sh
docker stack deploy -c docker-compose-logstash.yml os_logstash
#docker service update --endpoint-mode=dnsrr os_logstash_logstash
#docker service scale os_logstash=3
