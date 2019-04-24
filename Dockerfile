FROM lsiobase/ubuntu:bionic

RUN \
apt-get update && \
apt-get install -y --no-install-recommends npm &&\
npm install -g sonos-web-cli &&\
sonos-web install &&\
apt-get clean &&\
rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

COPY root/ /

EXPOSE 5050
EXPOSE 80
EXPOSE 443
EXPOSE 445
EXPOSE 3400
EXPOSE 3401
EXPOSE 3445
EXPOSE 3500
EXPOSE 4070
EXPOSE 4444
EXPOSE 136
EXPOSE 137
EXPOSE 138
EXPOSE 139
EXPOSE 1900
EXPOSE 1901
EXPOSE 2869
EXPOSE 10243
EXPOSE 10280
EXPOSE 10281
EXPOSE 10282
EXPOSE 10283
EXPOSE 10284
EXPOSE 5353
EXPOSE 6969

#HEALTHCHECK --interval=1m --timeout=2s\
#  CMD curl -LSs http://localhost:5050 || exit 1

#CMD cd /root/.sonos-web && node src/server.js
