FROM alpine:edge
MAINTAINER Ling <x@e2.to>
ENV NODE_VERSION=6.11.4

RUN apk add --no-cache --update nodejs=${NODE_VERSION}-r0 ca-certificates bash && \
    npm install yarn && \
    rm -rf /usr/share/man /tmp/* /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg /usr/bin/npm /usr/lib/node_modules && \
    mv node_modules /usr/bin && \
    ln -s /usr/lib/node_modules/.bin/yarn /usr/bin/yarn

# EOF