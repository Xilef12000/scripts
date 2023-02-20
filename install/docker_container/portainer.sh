# Portainer - Docker
# https://pimylifeup.com/raspberry-pi-portainer/

sudo docker pull portainer/portainer-ce:latest
# port [host]:[application]
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest