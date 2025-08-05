#Setup stage - install required tooling
FROM alpine:latest AS builder

RUN apk add --no-cache curl openssl libc-utils

FROM busybox:latest

WORKDIR /supbox

COPY --from=builder /usr/bin/curl /bin/curl
COPY --from=builder /usr/bin/openssl /bin/openssl


# COPY --from=builder /lib /lib
# COPY --from=builder /lib64 /lib64
# COPY --from=builder /usr/lib /usr/lib

ENV PATH="/bin:$PATH"
CMD ["/bin/sh"]