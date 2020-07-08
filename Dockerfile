FROM debian:stable
LABEL mainteiner="derkowskitomasz@gmail.com"

ENV SPOTIFYD_VERSION 0.2.24

RUN apt-get update && \
    apt-get  install -y --no-install-recommends --no-install-suggests wget libasound2

RUN mkdir /spotifyd && \
    wget --no-check-certificate https://github.com/Spotifyd/spotifyd/releases/download/v${SPOTIFYD_VERSION}/spotifyd-linux-armv6-slim.tar.gz && \
    tar -xvf spotifyd-linux-armv6-slim.tar.gz -C /spotifyd && \
    rm spotifyd-linux-armv6-slim.tar.gz 

COPY spotifyd.conf /spotifyd/

ENTRYPOINT ["/spotifyd/spotifyd", "--config-path", "/spotifyd/spotifyd.conf", "--no-daemon"]
