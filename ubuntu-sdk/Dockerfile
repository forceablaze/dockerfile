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
    curl \
  && pip install python-jenkins \
  && unset http_proxy \
  && unset https_proxy

ENV LANG en_US.UTF-8
ENV LC_ALL $LANG
RUN locale-gen $LANG && update-locale

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && pip install python-jenkins \
  && apt-get update \
  && apt-get install -y python3-pip libclang-dev \
  && unset http_proxy \
  && unset https_proxy
  
RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \
  && apt-get install -y maven openjdk-8-doc openjdk-8-jdk gawk fonts-noto-cjk \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \
  && apt-get install -y ruby \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs \
  && npm install -g fs-extra es6-promise gulp kew \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \  
  && apt-get install -y cifs-utils libpq-dev \
  && unset http_proxy \
  && unset https_proxy

WORKDIR /root
ENTRYPOINT ["/bin/bash"]
