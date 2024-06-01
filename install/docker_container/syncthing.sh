# syncthing
# https://github.com/linuxserver/docker-syncthing

path=[/your/config/path]

cd $path

docker pull syncthing/syncthing:latest

docker run -d \
  --name=syncthing \
  -p 8384:8384 \
  -p 22000:22000/tcp \
  -p 22000:22000/udp \
  -p 21027:21027/udp \
  -v $path:/var/syncthing \
  --restart unless-stopped \
  syncthing/syncthing:latest
