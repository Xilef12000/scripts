# one-line commands, that you need now and then, but can't remember (in alphabetic order, collected from various sources)

# $ var
$PWD	# current dir
$USER	# current user
# change Volume
alsamixer
# disk usage
df -H
# get thermals/temp
cat /sys/class/thermal/thermal_zone*/temp | sed 's/\(.\)..$/.\1°C/'
# kill task on port
fuser -k [port]/tcp
# print in DinA4
lp -o media=a4
# simple python webserver
python3 -m http.server