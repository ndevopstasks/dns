FROM neomediatech/ubuntu-base:20.04

COPY entrypoint.sh /
COPY data/* data/

RUN apt-get -yq update && \
    apt-get -yq --no-install-recommends install rbldnsd perl && \
    chmod 755 /entrypoint.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/log/*

EXPOSE 53/udp
ENTRYPOINT ["/entrypoint.sh"]