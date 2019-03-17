cd deluge_docker
docker build -t deluge .

sudo docker run \
-d \
--name deluge \
--network=host \
--restart unless-stopped \
-v /storage/deluge:/root/.config/deluge \
deluge
