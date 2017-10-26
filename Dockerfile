FROM alpine:edge

RUN apk add --no-cache haproxy pcre zlib lua5.3-libs socat

COPY docker-entrypoint.sh /
ENTRYPOINT ["/bin/sh","/docker-entrypoint.sh"]
