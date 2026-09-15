FROM debian:12.15-slim

LABEL maintainer="Sam Pearson <sam@sgp.me.uk>"

RUN apt-get update \
    && apt-get install -qq --no-install-recommends \
       openssh-client=1:9.2p1-2+deb12u10 \
       rsync=3.2.7-1+deb12u6 \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
