FROM        ubuntu:14.04.1
MAINTAINER  Ben Hall "Ben@BenHall.me.uk"

ENV APT_PACKAGES curl wget htop build-essential git 

RUN apt-get update -qq && \
  apt-get upgrade -yqq && \
  apt-get -yqq install $APT_PACKAGES && \
  apt-get -yqq clean

# Set up my user
RUN useradd ben -u 1000 -s /bin/bash --no-create-home

WORKDIR /home/ben/
ENV HOME /home/ben

VOLUME ["/home/ben"]
USER ben
EXPOSE 8080 3000

ENTRYPOINT ["/bin/bash"]
