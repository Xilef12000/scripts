# UFW
# https://www.cyberciti.biz/faq/how-to-setup-a-ufw-firewall-on-ubuntu-18-04-lts-server/

sudo apt update
sudo apt install ufw -y
sudo ufw status

# allow ssh
#sudo ufw allow 22/tcp
sudo ufw show added
sudo ufw enable
sudo ufw status