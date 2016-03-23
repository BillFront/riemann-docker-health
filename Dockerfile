FROM ruby:2.2.0
MAINTAINER tech@billfront.com

RUN gem install riemann-tools

CMD riemann-docker-health $RIEMANN_DOCKER_HEALTH_ARGUMENTS
