## Dockerfile for shen
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## SBCL
  RUN apt-get update &&      \
      apt-get install -y     \
      git                    \
      curl                   \
      wget                   \
      autoconf               \
      automake               \
      build-essential        

  RUN mkdir -p /opt

  RUN (cd /opt; git clone https://github.com/radiganm/tecla.git ./tecla)
  RUN make -C /opt/tecla -f boostrap.mk install

  RUN (cd /opt; git clone https://github.com/radiganm/shen-sbcl.git ./shen-sbcl)
  RUN make -C /opt/shen-sbcl install

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # Shen entry point
  ADD ./shen_ctl /usr/bin
  RUN chmod 775 /usr/bin/shen_ctl
  ENTRYPOINT ["/usr/bin/shen_ctl"]

## *EOF*
