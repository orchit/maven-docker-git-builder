FROM maven:3-openjdk-15
MAINTAINER Patrick Cornelissen <pcornelissen@orchit.de>

RUN  mv /etc/localtime /etc/localtime.backup && ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN microdnf install git docker curl which
RUN curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod 755 /usr/local/bin/docker-compose


