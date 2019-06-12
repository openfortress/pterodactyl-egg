FROM ubuntu:18.04
MAINTAINER l_gruenewald@web.de

RUN apt-get update -qq && apt-get upgrade -qq -y && \
apt-get install wget unzip -qq -y && \
apt-get install libc6 libstdc++6 zlib1g libsdl1.2debian bzip2 libssl1.0.0 libssl1.1 -qq -y

WORKDIR /mnt/server

RUN wget -q https://zandronum.com/downloads/zandronum3.0-linux-x86_64.tar.bz2 && \
tar -xf zandronum* && \
rm zandronum*.tar.bz2

WORKDIR /mnt/server/wads

RUN wget -q https://github.com/freedoom/freedoom/releases/download/v0.11.3/freedoom-0.11.3.zip && \
unzip -qq -j freedoom-* && \
rm freedoom-*.zip

WORKDIR /mnt/server

CMD ["./zandronum-server", "-iwad", "wads/freedoom1.wad"]
