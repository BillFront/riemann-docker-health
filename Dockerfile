FROM ruby:2.2.0
MAINTAINER tech@billfront.com

RUN git clone https://github.com/yundt/riemann-tools.git
WORKDIR riemann-tools
RUN rake gem
RUN gem install pkg/riemann-tools-0.2.6.gem

CMD riemann-docker-health $RIEMANN_DOCKER_HEALTH_ARGUMENTS
