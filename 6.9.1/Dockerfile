FROM alpine:edge
MAINTAINER e2tox@live.com
ENV NODE_VERSION=6.9.1-r0

# ADD yarn-0.17.9.tar.gz /usr/lib/yarn
# ENV PATH=${PATH}:/usr/lib/yarn/dist/bin
RUN apk upgrade --update && \
    apk add --update nodejs=${NODE_VERSION} ca-certificates && \
    npm i -g yarn && \
    yarn self-update && \
    rm -rf /tmp/* /var/cache/apk/*

# EOF
