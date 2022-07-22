FROM fluent/fluentd:v1.15.0-1.0

USER root
RUN apk --no-cache --update add build-base ruby-dev \
 && fluent-gem install fluent-plugin-mongo fluent-plugin-rewrite-tag-filter \
 && apk del build-base ruby-dev \
 && rm -rf /tmp/* /var/tmp/* /var/cache/apk/*
USER fluent
