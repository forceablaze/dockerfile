FROM ubuntu:bionic

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list \
  && apt-get update \
  && apt-get install -y \
    build-essential \
    locales \
    cmake ctags vim subversion git \
    python2.7 python-pip curl \
    ctags net-tools iputils-ping \
    curl doxygen nkf zip \
  && pip install python-jenkins \
  && unset http_proxy \
  && unset https_proxy

ENV LANG en_US.UTF-8
ENV LC_ALL $LANG
RUN locale-gen $LANG && update-locale

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \
  && apt-get install -y python3-pip openjdk-8-jdk graphviz\
  && unset http_proxy \
  && unset https_proxy
  
RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \  
  && apt-get install -y gawk fonts-noto-cjk fonts-takao cifs-utils libpq-dev wget \
  && unset http_proxy \
  && unset https_proxy

WORKDIR /root