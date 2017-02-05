## Dockerfile for Uzbl
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## Vimb

  RUN apt-get update &&              \
      apt-get install -y             \
        apt-utils                    \
        build-essential              \
        libwebkit-dev                \
        git

  RUN mkdir -p /opt
  RUN (cd /opt; git clone https://github.com/radiganm/vimb.git)
  RUN (cd /opt/vimb; make clean)
  RUN (cd /opt/vimb; make)
  RUN (cd /opt/vimb; make install)

  ENTRYPOINT ["/usr/local/bin/vimb"]

## *EOF*
