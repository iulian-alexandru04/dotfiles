FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    deluged \
    deluge-console \
    deluge-web
CMD deluged && deluge-web
