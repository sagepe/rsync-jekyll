FROM debian:10.7-slim

LABEL maintainer="Sam Pearson <sam@sgp.me.uk>"

RUN apt-get update \
    && apt-get install -qq --no-install-recommends \
       openssh-client=1:7.9p1-10+deb10u1 \
       rsync=3.1.3-6 \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
