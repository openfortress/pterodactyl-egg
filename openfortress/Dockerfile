FROM ghcr.io/pterodactyl/games:source
MAINTAINER Leon Grünewald <l_gruenewald@web.de>

USER root

RUN apt update && \
    apt upgrade -y && \
    apt install git python3 python3-pip

USER container

