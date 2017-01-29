FROM debian:unstable

MAINTAINER Erik Tews <erik@datenzone.de>

RUN useradd -m gajim; apt-get update && apt-get install -y gajim gajim-omemo; rm -rf /var/lib/apt/lists/*

COPY start-gajim.sh /tmp/
ENTRYPOINT ["/tmp/start-gajim.sh"]
