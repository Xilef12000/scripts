# one-line commands, that you need now and then, but can't remember (in alphabetic order, collected from various sources)

# $ var
$PWD	# current dir
$USER	# current user
# Appimage: mount for inspection
my.AppImage --appimage-mount
# change Volume
alsamixer
# disk usage
df -H
# docker remove unused volumes
docker volume prune
# get thermals/temp
cat /sys/class/thermal/thermal_zone*/temp | sed 's/\(.\)..$/.\1°C/'
# hollywood
sudo apt install hollywood
hollywood
# kill task on port
fuser -k [port]/tcp
# print in DinA4
lp -o media=a4
# sensors
sudo apt-get install lm-sensors -y
sudo sensors-detect
sudo service kmod start
sensors
# simple python webserver
python3 -m http.server
# symbolic-link: output path
readlink -f sym-link.file
# traceroute
sudo apt-get install traceroute
