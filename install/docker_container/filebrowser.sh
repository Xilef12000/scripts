# filebrowser - Docker
# https://github.com/filebrowser/filebrowser
# https://filebrowser.org/installation#docker

path=[/your/storage/path]

cd $path
mkdir srv
touch filebrowser.db
touch .filebrowser.json
cat <<< '
{
  "port": 80,
  "baseURL": "",
  "address": "",
  "log": "stdout",
  "database": "/database/filebrowser.db",
  "root": "/srv"
}
' > $path/.filebrowser.json


sudo docker pull filebrowser/filebrowser

sudo docker run -d \
    -v $path/srv:/srv \
    -v $path/filebrowser.db:/database.db \
    -v $path/.filebrowser.json:/.filebrowser.json \
    -u $(id -u):$(id -g) \
    -p 8080:80 \
    --restart=unless-stopped \
    --name filebrowser \
    filebrowser/filebrowser