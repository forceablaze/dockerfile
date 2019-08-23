FROM ubuntu-sdk

COPY jenkins-slave /usr/local/bin/jenkins-slave

ARG VERSION=3.27
ARG AGENT_WORKDIR=/root/agent
RUN export http_proxy=http://proxy.olympus.co.jp:8080 \
  && export https_proxy=http://proxy.olympus.co.jp:8080 \
  && curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /usr/share/jenkins \
  && chmod 644 /usr/share/jenkins/slave.jar \
  && unset http_proxy \
  && unset https_proxy


ENTRYPOINT ["jenkins-slave"]