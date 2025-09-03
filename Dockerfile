#Setup stage - install required tooling
FROM alpine:latest AS builder

RUN apk add --no-cache curl openssl libc-utils

FROM busybox:latest

WORKDIR /supbox

COPY --from=builder /usr/bin/curl /bin/curl
COPY --from=builder /usr/bin/openssl /bin/openssl

ENV PATH="/bin:$PATH"
CMD ["/bin/sh"]