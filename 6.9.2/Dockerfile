FROM alpine:edge
MAINTAINER Ling <e2tox@microbox.io>
ENV NODE_VERSION=6.9.2

RUN apk upgrade --update && \
    apk add --update nodejs=${NODE_VERSION}-r0 ca-certificates && \
    npm i -g yarn && \
    yarn self-update && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
