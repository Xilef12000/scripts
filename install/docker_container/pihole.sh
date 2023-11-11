# Pihole - Docker
# https://github.com/pi-hole/docker-pi-hole/blob/master/examples/docker_run.sh

docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 80:80 \
    -e TZ="Germany/Berlin" \
    -v "[your\pihole\dir]/etc/pihole:/etc/pihole" \
    -v "[your\pihole\dir]/etc/dnsmasq.d:/etc/dnsmasq.d" \
    --restart=unless-stopped \
    pihole/pihole:latest