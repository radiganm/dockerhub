## Dockerfile for Uzbl

  FROM ubuntu:latest

  MAINTAINER Mac Radigan <mac@radigan.org>

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## Uzbl

  RUN apt-get update &&              \
      apt-get install -y             \
        apt-utils                    \
        uzbl

  ADD ./uzbl_ctl /usr/bin
  RUN chmod 775 /usr/bin/uzbl_ctl
  ENTRYPOINT ["/usr/bin/uzbl_ctl"]

## *EOF*
