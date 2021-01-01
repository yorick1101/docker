NETWORK=flink-network
FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager"

docker network inspect $NETWORK 
if [ $? != 0 ];then
	docker network create $NETWORK
fi

docker run \
    -d \
    --rm \
    --name=jobmanager \
    --network $NETWORK \
    --publish 8081:8081 \
    --env FLINK_PROPERTIES="${FLINK_PROPERTIES}" \
    flink:latest jobmanager