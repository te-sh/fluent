FROM fluent/fluentd:v1.14.6-1.1

USER root
RUN apk --no-cache --update add build-base ruby-dev \
 && fluent-gem install fluent-plugin-mongo \
 && apk del build-base ruby-dev \
 && rm -rf /tmp/* /var/tmp/* /var/cache/apk/*
USER fluent
