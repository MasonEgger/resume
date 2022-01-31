FROM ubuntu:latest

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt -y update; apt-get -y upgrade

RUN DEBIAN_FRONTEND=nointeractive apt install -y --no-install-recommends \
    texlive-latex-extra \
    texlive-xetex \
    texlive-fonts-extra \
    texlive-fonts-recommended 

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula \
    select true | debconf-set-selections && apt install -y msttcorefonts


WORKDIR /data


