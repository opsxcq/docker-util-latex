FROM debian:jessie

MAINTAINER opsxcq <opsxcq@thestorm.com.br>

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texlive-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /docs
WORKDIR /docs

COPY main.sh /

ENTRYPOINT ["/main.sh"]
CMD ["default"]

