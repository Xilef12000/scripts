# Radicale - Docker
# https://github.com/tomsquest/docker-radicale
# https://hub.docker.com/r/tomsquest/docker-radicale

# see https://github.com/Kozea/Radicale/blob/master/DOCUMENTATION.md#authentication to learn more about Authentication

path=[/your/storage/path]

cd $path
mkdir data
mkdir config
# touch config/config
cd config
wget https://raw.githubusercontent.com/tomsquest/docker-radicale/master/config
cd $path

sudo apt install apache2-utils -y

docker pull tomsquest/docker-radicale

: '
docker run -d --name radicale \
    -p 5232:5232 \
    -v $path/data:/data \
    -v $path/config:/config:ro \
    tomsquest/docker-radicale
'

docker run -d --name radicale \
    -p 5232:5232 \
    --init \
    --read-only \
    --security-opt="no-new-privileges:true" \
    --cap-drop ALL \
    --cap-add CHOWN \
    --cap-add SETUID \
    --cap-add SETGID \
    --cap-add KILL \
    --pids-limit 50 \
    --memory 256M \
    --health-cmd="curl --fail http://localhost:5232 || exit 1" \
    --health-interval=30s \
    --health-retries=3 \
    -v $path/data:/data \
    -v $path/config:/config:ro \
    --restart unless-stopped \
    tomsquest/docker-radicale