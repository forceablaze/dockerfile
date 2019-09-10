FROM ubuntu-sdk
RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && apt-get update \
  && apt-get install -y rabbitmq-server \
  && cd /var/lib/ \
  && git clone https://enosta.olympus.co.jp/gitlab_01/ipf3/woodpecker.git \
  && git submodule update --init --recursive \
  && cd woodpecker \
  && pip3 install -r requirements.txt \
  && unset http_proxy \
  && unset https_proxy
  
RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && cd /var/lib/woodpecker/utils/cvlog \
  && pip3 install -r requirements.txt \
  && ./checkout.sh
  && make prepare \
  && cd /var/lib/woodpecker/woodpecker \
  && python3 manage.py collectstatic \
  && unset http_proxy \
  && unset https_proxy
  
RUN useradd woodpecker \
  && mkdir -p /var/lib/woodpecker/woodpecker/media \
  && chown -R root:woodpecker /var/lib/woodpecker \
  && chmod 775 -R /var/lib/woodpecker
  
RUN mkdir -p /var/log/celery \
  && mkdir -p /var/run/celery \
  && chown -R root:woodpecker /var/log/celery \
  && chmod 775 -R /var/log/celery \
  && chown -R root:woodpecker /var/run/celery \
  && chmod 775 -R /var/run/celery
  
RUN mkdir -p /var/log/woodpecker \
  && chown -R root:woodpecker /var/log/woodpecker \
  && chmod 775 -R /var/log/woodpecker

ENTRYPOINT []
CMD service rabbitmq-server start; \
	cd /var/lib/woodpecker/woodpecker; \
	if [ ! -d db ]; then \
	  mkdir db; \
	fi; \
	python3 manage.py makemigrations && python3 manage.py migrate; \
	chown -R root:woodpecker db && chmod 775 -R db; \
	chown -R root:woodpecker media && chmod 775 -R media; \
	celery worker --detach -A woodpecker -l info --uid=1000 --pidfile=/var/run/celery/%n.pid --logfile=/var/log/celery/%n%I.log; \
	uwsgi --uid=1000 --gid 1000 --chdir=/var/lib/woodpecker/woodpecker /var/lib/woodpecker/uwsgi.ini
