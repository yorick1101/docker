NETWORK=flink-network
FLINK_PROPERTIES="jobmanager.rpc.address: jobmanager"


docker network inspect $NETWORK 
if [ $? != 0 ];then
	docker network create $NETWORK
fi

docker run \
    -d \
    --rm \
    --name=taskmanager \
    --network flink-network \
    --env FLINK_PROPERTIES="${FLINK_PROPERTIES}" \
    flink:latest taskmanager