# Docker on Raspberry Pi
# https://www.simplilearn.com/tutorials/docker-tutorial/raspberry-pi-docker
# https://linuxhint.com/install-docker-compose-raspberry-pi/

sudo apt-get update && sudo apt-get upgrade -y

# Install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# use docker as non root/sudo user
sudo usermod -aG docker $(whoami)

# it's very important to reboot
sudo reboot

docker version
docker run hello-world
docker container prune -f

# install docker-compose
sudo apt install docker-compose -y

docker-compose version

# autostart docker
sudo systemctl enable docker

# it's very important to reboot
sudo reboot