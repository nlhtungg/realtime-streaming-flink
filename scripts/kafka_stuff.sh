docker exec -it broker /bin/bash

kafka-console-consumer --topic financial_transactions --bootstrap-server localhost:9092 --from-beginning &

#delete topic
docker exec -it e489366b6157 /usr/bin/kafka-topics --bootstrap-server localhost:9092 --delete --topic financial_transactions

#create topic
docker exec -it e489366b6157 /usr/bin/kafka-topics --bootstrap-server localhost:9092 --create --topic financial_transactions --partitions 1 --replication-factor 1
