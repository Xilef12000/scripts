# spotifyd - Docker

mkdir spotifyd

# replace [username], [password], and [device_name]
cat <<< '
# replace [username], [password], and [device_name]
[global]
username = "[username]"
password = "[password]"
backend = "alsa"
device = "default" # Given by `aplay -L`
mixer = "PCM"
volume-control = "alsa" # or alsa_linear, or softvol
#onevent = command_run_on_playback_event
device_name = "[device_name]" # Cannot contain spaces
device_type = "speaker"
bitrate = 160
cache_path = "/etc/spotifyd/cache"
max_cache_size = 1000000000
volume-normalisation = true
normalisation-pregain = -10
initial_volume = "30"
' > spotifyd/spotifyd.conf

docker run -d --net host --group-add $(getent group audio | cut -d: -f3) --device /dev/snd:/dev/snd -v /usr/share/alsa:/usr/share/alsa -v $PWD/spotifyd/spotifyd.conf:/etc/spotifyd.conf --name spotifyd ggoussard/spotifyd:latest

# i strongly recommend to turn your volume down before use
alsamixer