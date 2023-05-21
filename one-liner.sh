# one-line commands, that you need now and then, but can't remember (in alphabetic order, collected from various sources)

# $ var
$PWD	# current dir
$USER	# current user
# Appimage: mount for inspection
my.AppImage --appimage-mount
# change Volume
alsamixer
# combine multiple PDFs
pdfunite [in-1.pdf] [in-2.pdf] [in-n.pdf] [out.pdf]
# disk usage
df -H
# docker remove unused volumes
docker volume prune
# EurKEY, change keyboard  layout to EurKEY
setxkbmap eu
# get thermals/temp
cat /sys/class/thermal/thermal_zone*/temp | sed 's/\(.\)..$/.\1°C/'
# hollywood
sudo apt install hollywood
hollywood
# kill task on port
fuser -k [port]/tcp
# nginx test server
sudo docker run --name some-nginx -d -p 8000:80 nginx
# print in DinA4
lp -o media=a4
# QR-Code generation
sudo apt-get install qrencode
qrencode -t ANSIUTF8 '[your text]'
# sensors
sudo apt-get install lm-sensors -y
sudo sensors-detect
sudo service kmod start
sensors
# simple python webserver
python3 -m http.server
# snap packet grant access to /media or /mnt
sudo snap connect [snap-packet]:removable-media
# symbolic-link: output path
readlink -f sym-link.file
# traceroute
sudo apt-get install traceroute
