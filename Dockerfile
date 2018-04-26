FROM ruby:alpine

RUN apk -Uuv add --no-cache make gcc musl-dev && \
  gem install riemann-docker && \
  apk --purge -v del make gcc musl-dev

CMD riemann-docker $RIEMANN_DOCKER_HEALTH_ARGUMENTS
