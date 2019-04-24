# sonos-web-docker

## Description

This is a simple repository to build a Docker image of [Villarrealized/sonos-web](https://github.com/Villarrealized/sonos-web) based on the [LinuxServer.io Ubuntu base image](https://hub.docker.com/r/lsiobase/ubuntu).

**Note:** This dockerfile will not work on Docker for Windows or Docker for Mac due to the fact that host network mode is not supported.

## Usage
### Build
  ```
  docker build -t sonos-web-docker ./
  ````
### Run
  ```
  docker run -d -e "PUID=0" -e "PGID=0" \
  --name=sonos-web-docker --net=host \
  --restart=always sonos-web-docker
  ```
