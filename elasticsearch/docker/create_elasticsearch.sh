docker service create \
   --name escluster \
   --network elasticsearch-backend \
   --mode global \
   --update-parallelism 1 \
   --update-delay 60s \
   --publish 9200:9200 \
   --mount type=bind,source=/tmp,target=/data \
 elasticsearch:2.4 \
   elasticsearch \
   -Des.discovery.zen.ping.multicast.enabled=false \
   -Des.discovery.zen.ping.unicast.hosts=escluster \
   -Des.gateway.expected_nodes=3 \
   -Des.discovery.zen.minimum_master_nodes=2 \
   -Des.gateway.recover_after_nodes=2 \
   -Des.network.bind=_eth0:ipv4_
