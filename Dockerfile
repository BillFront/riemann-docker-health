FROM ruby:2.2.0
MAINTAINER tech@billfront.com

RUN gem install riemann-docker

CMD riemann-docker $RIEMANN_DOCKER_HEALTH_ARGUMENTS
