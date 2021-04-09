#login as root/123


docker run --name mosquitto -p 1883:1883 -v /mnt/d/docker/mqtt-mosquitto/mosquito.log:/mosquitto/log/mosquitto.log -v /mnt/d/docker/mqtt-mosquitto/mosquitto.conf:/mosquitto/config/mosquitto.conf -v /mnt/d/docker/mqtt-mosquitto/mosquitto.passwd:/mosquitto/config/mosquitto.passwd eclipse-mosquitto:2
