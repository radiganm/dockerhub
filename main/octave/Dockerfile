## Dockerfile for Octave
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan <mac@radigan.org>

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## Octave
  RUN apt-get update &&  \
      apt-get install -y \
        mercurial        \
        curl             \
        wget             \
        build-essential  \
        libtool          \
        autoconf         \
        bison            \
        flex             

  RUN (mkdir -p /opt; hg clone http://hg.savannah.gnu.org/hgweb/octave;)
  RUN (cd octave; ./bootstrap)
  RUN (cd octave; ./configure)
  RUN (cd octave; make)
  RUN (cd octave; make install)

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # CERN Root entry point
  ADD ./octave_ctl /usr/bin
  RUN chmod 775 /usr/bin/octave_ctl
  ENTRYPOINT ["/usr/bin/octave_ctl"]

## *EOF*
