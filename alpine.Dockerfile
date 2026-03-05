FROM alpine:latest

RUN apk add --no-cache curl openssl libc-utils prometheus bind-tools

ARG USERNAME=supbox
ARG USER_GROUP=support
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN addgroup -g $USER_GID -S $USER_GROUP && \
    adduser -u $USER_UID -S $USERNAME -G $USER_GROUP

USER $USERNAME

WORKDIR /supbox

CMD ["sleep", "infinity"]