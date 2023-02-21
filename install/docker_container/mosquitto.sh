# mosquitto - Docker
# https://hub.docker.com/_/eclipse-mosquitto
# http://www.steves-internet-guide.com/mqtt-username-password-example/
# https://mosquitto.org/documentation/authentication-methods/

mkdir mosquitto
mkdir mosquitto/config

# replace [username], [password], and [device_name]
cat <<< '
listener 1883 0.0.0.0
allow_anonymous false
password_file /mosquitto/config/password_file
' > mosquitto/config/mosquitto.conf

# replace [user] and [passwd]
cat <<< '
[user]:[passwd]
[user1]:[passwd1]
' > mosquitto/config/password_file

docker run -d -it -p 1883:1883 -p 9001:9001 -v $PWD/mosquitto/config:/mosquitto/config --restart=unless-stopped --name mosquitto-mqtt eclipse-mosquitto

docker attach mosquitto-mqtt