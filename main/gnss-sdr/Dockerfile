## Dockerfile for gnss
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## GNSS-SDR

  RUN apt-get update &&              \
      apt-get install -y             \
        build-essential              \
        cmake                        \
        git                          \
        libboost-dev                 \
        libboost-date-time-dev       \
        libboost-system-dev          \
        libboost-filesystem-dev      \
        libboost-thread-dev          \
        libboost-chrono-dev          \
        libboost-serialization-dev   \
        libboost-program-options-dev \
        libboost-test-dev            \
        liblog4cpp5-dev              \
        libuhd-dev                   \
        gnuradio-dev                 \
        gr-osmosdr                   \
        libblas-dev                  \
        liblapack-dev                \
        libarmadillo-dev             \
        libgflags-dev                \
        libgoogle-glog-dev           \
        libgnutls-openssl-dev        \
        libgtest-dev                 \
        python-mako                  \
        python-six

  RUN mkdir -p /opt
  RUN (cd /opt; git clone https://github.com/radiganm/gnss-sdr.git ./gnss-sdr)
  RUN (cd /opt/gnss-sdr/build; cmake .. && make && make install)

  ADD ./sdr_ctl /usr/local/bin
  RUN chmod 775 /usr/local/bin/sdr_ctl
  ENTRYPOINT ["/usr/local/bin/sdr_ctl"]

## *EOF*
