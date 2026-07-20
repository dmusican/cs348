FROM ubuntu:26.04

RUN apt-get -y update && \
    apt-get -y install git vim zip htop python3 python3-pil curl zsh

USER ubuntu

# https://sdkman.io/install
RUN curl -s "https://get.sdkman.io" | bash

RUN /bin/bash -c "source ~/.sdkman/bin/sdkman-init.sh; sdk version; sdk install kotlin; sdk install java; sdk install maven"

RUN echo "PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f ' " >> ~/.zshrc
