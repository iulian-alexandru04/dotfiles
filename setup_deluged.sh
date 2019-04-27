cd deluge_docker
sudo docker build -t deluge .

sudo docker run \
-d \
--name deluge \
--network=host \
--restart unless-stopped \
-v /storage/deluge:/root/.config/deluge \
deluge
