FROM alpine:latest

RUN apk add --no-cache curl openssl libc-utils prometheus bind-tools

WORKDIR /supbox

CMD ["/bin/sh"]