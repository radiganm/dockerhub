## Dockerfile for Octave
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan <mac@radigan.org>

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## Octave
  RUN apt-get update &&               \
      apt-get install -y              \
        mercurial                     \
        curl                          \
        wget                          \
        build-essential               \
        ncurses-dev                   \
        gcc                           \
        g++                           \
        gfortran                      \
        make                          \
        libblas-dev                   \
        liblapack-dev                 \
        libpcre3-dev                  \
        libarpack2-dev                \
        libcurl4-gnutls-dev           \
        epstool                       \
        libfftw3-dev                  \
        transfig                      \
        libfltk1.3-dev                \
        libfontconfig1-dev            \
        libfreetype6-dev              \
        libgl2ps-dev                  \
        libglpk-dev                   \
        libreadline-dev               \
        gnuplot-x11                   \
        libgraphicsmagick++1-dev      \
        libhdf5-serial-dev            \
        openjdk-8-jdk                 \
        libsndfile1-dev               \
        llvm-dev                      \
        lpr                           \
        texinfo                       \
        libgl1-mesa-dev               \
        libosmesa6-dev                \
        pstoedit                      \
        portaudio19-dev               \
        libqhull-dev                  \
        libqrupdate-dev               \
        libqscintilla2-dev            \
        libqt4-dev                    \
        libqtcore4                    \
        libqtwebkit4                  \
        libqt4-network                \
        libqtgui4                     \
        libqt4-opengl-dev             \
        libsuitesparse-dev            \
        texlive                       \
        libxft-dev                    \
        zlib1g-dev                    \
        autoconf                      \
        automake                      \
        bison                         \
        flex                          \
        gperf                         \
        gzip                          \
        icoutils                      \
        librsvg2-bin                  \
        libtool                       \
        perl                          \
        rsync                         \
        tar

  RUN (mkdir -p /opt; hg clone http://hg.savannah.gnu.org/hgweb/octave; cd octave; ./bootstrap && ./configure && make && make install)

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # CERN Root entry point
  ADD ./octave_ctl /usr/bin
  RUN chmod 775 /usr/bin/octave_ctl
  ENTRYPOINT ["/usr/bin/octave_ctl"]

## *EOF*
