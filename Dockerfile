FROM anapsix/alpine-java:jre8

ENV JRUBY_VERSION=9.0.5.0 \
    PATH=/opt/jruby/bin:$PATH

RUN apk upgrade --update \
    && apk add --update curl \
    && curl -L -o /tmp/jruby.tar.gz https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz \
    && tar -C /opt -zxf /tmp/jruby.tar.gz \
    && ln -s /opt/jruby-${JRUBY_VERSION} /opt/jruby \
    && apk del curl \
    && rm -rf /tmp/* \
              /opt/jruby/samples \
    && gem install norikra --no-ri --no-rdoc

EXPOSE 26571 26578
ENTRYPOINT ["norikra", "start"]
CMD []
