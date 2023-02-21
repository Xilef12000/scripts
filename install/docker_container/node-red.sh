# node-red - Docker
# https://nodered.org/docs/getting-started/docker
# https://hub.docker.com/r/nodered/node-red
# see http://nodered.org/docs/security.html for password login

mkdir node-red
mkdir node-red/data
chmod -R 777 node-red

# use nodered/node-red and not nodered/node-red-docker

# port [host]:[application]
docker run -it -p 81:1880 -v $PWD/node-red/data:/data --restart=unless-stopped --name node-red nodered/node-red