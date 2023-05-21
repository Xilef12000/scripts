# wg-easy without docker
# https://github.com/wg-easy/wg-easy/wiki/Using-WireGuard-Easy-without-Docker

apt update
apt install wireguard git nodejs npm ufw wget nano -y

echo net.ipv4.ip_forward=1 >> /etc/sysctl.conf
echo net.ipv4.conf.all.src_valid_mark=1 >> /etc/sysctl.conf
sysctl -p
cd ~
git clone https://github.com/WeeJeWel/wg-easy
cd wg-easy
mv src /app
cd /app
npm ci --production
cp node_modules ..
ufw allow 51821/tcp # (webui) Only for users of the UFW firewall
ufw allow 51820/udp # (wireguard listening port) Only for users of the UFW firewall
cd -
nano /etc/systemd/system/wg-easy.service # Replace everything that is marked as 'REPLACEME' and tweak it to your liking
systemctl daemon-reload
systemctl enable --now wg-easy.service
systemctl start wg-easy.service
systemctl status wg-easy.service