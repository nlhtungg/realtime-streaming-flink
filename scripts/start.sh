#docker
docker compose up -d &

#start flink cluster
/opt/flink/bin/start-cluster.sh &

#submit job to flink cluster
/opt/flink/bin/flink run -c flinkcommerce.DataStreamJob target/flinkcommerce-1.0-SNAPSHOT.jar