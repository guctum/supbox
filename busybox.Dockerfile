#Setup stage - install required tooling
FROM alpine:latest AS builder

RUN apk add --no-cache curl openssl libc-utils prometheus bind-tools

FROM busybox:latest

WORKDIR /supbox

COPY --from=builder /usr/bin/curl /bin/curl
COPY --from=builder /usr/bin/openssl /bin/openssl
COPY --from=builder /usr/bin/promtool /bin/promtool
COPY --from=builder /usr/bin/dig /bin/dig

COPY --from=builder /lib /lib

ENV PATH="/bin:$PATH"
CMD ["/bin/sh"]