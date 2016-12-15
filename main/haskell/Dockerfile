## Dockerfile for Haskell Platform
## Mac Radigan

  FROM ubuntu:latest

  MAINTAINER Mac Radigan <mac@radigan.org>

  ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

  ## update APT
  RUN ulimit -n 1024
  RUN apt-get update --fix-missing

  ## Haskell
  RUN apt-get update &&  \
      apt-get install -y \
        haskell-platform 

  RUN cabal install euterpea

  # clean up APT
  RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

  # Haskell ghci entry point
  ENTRYPOINT ["/usr/bin/ghci"]

## *EOF*