# Docker
# https://docs.docker.com/engine/install/ubuntu/

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install
sudo apt-get update
sudo apt-get install \
ca-certificates \
curl \
gnupg \
lsb-release

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world

# use docker as non root/sudo user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker version
docker-compose version
docker run hello-world

# autostart docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service