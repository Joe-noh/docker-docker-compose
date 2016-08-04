FROM ruby:2.3.1
MAINTAINER Joe Honzawa <goflb.jh@gmail.com>

ENV  DOCKER_VERSION 1.12.0
ENV COMPOSE_VERSION 1.8.0

RUN curl -fsSL "https://get.docker.com/builds/$(uname -s)/$(uname -m)/docker-$DOCKER_VERSION.tgz" | tar xz --strip=1 -C /usr/local/bin

RUN curl -fsSL "https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose

