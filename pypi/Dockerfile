FROM alpine:3.7
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN export http_proxy=http://proxy.olympus.co.jp:8080 && \
    export https_proxy=http://proxy.olympus.co.jp:8080 && \
    apk update && \
    apk add py-pip && \
    pip install --upgrade pip && \
    mkdir -p /srv/pypi

RUN export http_proxy=http://proxy.olympus.co.jp:8080 && \
    export https_proxy=http://proxy.olympus.co.jp:8080 && \
    pip install -U passlib pypiserver

EXPOSE 80
VOLUME ["/srv/pypi"]

ADD entrypoint.sh /
CMD ["/entrypoint.sh"]
