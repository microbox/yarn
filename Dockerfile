FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ENV NODE_VERSION=6.11.4

RUN apk add --no-cache --update nodejs=${NODE_VERSION}-r0 ca-certificates bash && \
    npm i -g yarn && \
    yarn self-update && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF