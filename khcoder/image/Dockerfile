FROM rattydave/docker-ubuntu-xrdp-mate-custom:18.04

ENV DEBIAN_FRONTEND=noninteractive

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
RUN echo 'LANG="ja_JP.UTF-8"' > /etc/default/locale && \
    echo 'LANGUAGE="ja_JP:ja"' >> /etc/default/locale && \
    echo 'LC_ALL="ja_JP.UTF-8"' >> /etc/default/locale && \
    locale-gen $LANG && update-locale \
ENV LC_ALL $LANG

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \
  && apt-get install -y locales openjdk-8-jdk r-base perl \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get install -y git vim libmysqlclient-dev \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get install -y cpanminus \
  && cpanm Jcode Tk Text::Diff DBI DBD::CSV File::BOM \
  && cpanm Lingua::JA::Regular::Unicode Net::Telnet YAML \
  && cpanm Excel::Writer::XLSX DBD::mysql Spreadsheet::ParseExcel::FmtJapan \
  && cpanm Spreadsheet::ParseXLSX Statistics::ChisqIndep Statistics::Lite \
  && cpanm Unicode::Escape Algorithm::NaiveBayes \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get install -y fonts-takao \
  && unset http_proxy \
  && unset https_proxy

RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && git clone https://github.com/ko-ichi-h/khcoder /opt/khcoder \
  && unset http_proxy \
  && unset https_proxy


ENV http_proxy=http://proxy.olympus.co.jp:8080
ENV https_proxy=http://proxy.olympus.co.jp:8080
