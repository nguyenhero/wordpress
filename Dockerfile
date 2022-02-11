FROM debian:jessie

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY main.sh /
RUN chmod 777 main.sh
RUN cat main.sh
RUN mkdir /www
RUN echo ${PORT}
EXPOSE ${PORT}

WORKDIR /www

ENTRYPOINT ["/main.sh"]