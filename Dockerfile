FROM ruby:alpine

RUN apk -Uuv add --no-cache make gcc musl-dev && \
  gem install riemann-docker && \
  apk --purge -v del make gcc musl-dev

ADD start-riemann-docker /bin/

CMD /bin/start-riemann-docker
