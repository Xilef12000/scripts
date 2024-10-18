# nginx - Docker
# https://hub.docker.com/_/nginx
# https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/
# https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-to-setup-Nginx-reverse-proxy-servers-by-example

path=[/your/storage/path]

cd $path

docker pull nginx
docker run -it --rm -d -p 80:80 --name nginx nginx

docker cp nginx:/etc/nginx $path/etc
docker cp nginx:/usr/share/nginx $path/share
docker stop nginx
# docker run -it --rm -d -p 80:80 -v ~/nginx/etc:/etc/nginx -v ~/nginx/share:/usr/share/nginx/ --name nginx nginx
docker run -it -d -p 80:80 -v $path/etc:/etc/nginx -v $path/share:/usr/share/nginx/ --restart=unless-stopped --name nginx nginx