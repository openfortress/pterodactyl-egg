FROM ubuntu:20.04
MAINTAINER l_gruenewald@web.de

RUN apt update -qq -y && apt-get upgrade -qq -y
RUN apt install wget unzip \
    libc6 libstdc++6 zlib1g libsdl1.2debian bzip2 -qq -y

RUN adduser --disabled-password --home /home/container container

RUN wget http://security.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.6_amd64.deb
RUN apt install ./libssl1.0.0_1.0.2n-1ubuntu5.6_amd64.deb

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

RUN mkdir -p .config/zandronum

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
