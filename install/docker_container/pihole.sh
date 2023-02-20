# Pihole - Docker
# https://www.blog.berrybase.de/blog/2022/04/29/pi-hole-raspberry-pi-docker/
# https://hub.docker.com/r/pihole/pihole

mkdir pihole

# replace [passwd] with your desired poassword
# Port [host]:[application]
cat <<< '
version: "3"

# replace [passwd] with your desired poassword
# Port [host]:[application]

# More info at https://github.com/pi-hole/docker-pi-hole/ and https://docs.pi-hole.net/
services:
  pihole:
    container_name: pihole
    image: pihole/pihole:latest
    # For DHCP it is recommended to remove these ports and instead add: network_mode: "host"
    ports:
      - "53:53/tcp"
      - "53:53/udp"
      - "67:67/udp" # Only required if you are using Pi-hole as your DHCP server
      - "83:80/tcp"
    environment:
      TZ: "Germany/Berlin"
      WEBPASSWORD: "[passwd]"
    # Volumes store your data between container upgrades
    volumes:
      - "./etc:/etc/pihole"
      - "./etc/dnsmasq.d:/etc/dnsmasq.d"
    #   https://github.com/pi-hole/docker-pi-hole#note-on-capabilities
    cap_add:
      - NET_ADMIN # Required if you are using Pi-hole as your DHCP server, else not needed
    restart: unless-stopped
' > pihole/docker-compose.yml

cd pihole

docker-compose up -d