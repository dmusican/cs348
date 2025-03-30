FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install vim
RUN apt-get -y install zip
RUN apt-get -y update
RUN apt-get -y install curl

USER ubuntu

# https://sdkman.io/install
RUN curl -s "https://get.sdkman.io" | bash

RUN /bin/bash -c "source ~/.sdkman/bin/sdkman-init.sh; sdk version; sdk install kotlin; sdk install java; sdk install maven"
