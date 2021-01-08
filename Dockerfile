FROM debian:buster-slim

LABEL maintainer="Sam Pearson <sam@sgp.me.uk>"

RUN apt-get update \
    && apt-get install -qq --no-install-recommends \
       openssh-client \
       rsync \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
