## Dockerfile for SBCL
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## SBCL
  RUN apt-get update &&               \
      apt-get install -y              \
        sbcl

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # SBCL entry point
  ADD ./sbcl_ctl /usr/bin
  RUN chmod 775 /usr/bin/sbcl_ctl
  ENTRYPOINT ["/usr/bin/sbcl_ctl"]

## *EOF*
