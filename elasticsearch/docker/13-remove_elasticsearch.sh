#!/bin/sh
docker service rm elasticstack_elasticsearch
docker service rm elasticstack_logstash
docker service rm elasticstack_nginx
docker service rm elasticstack_kibana
