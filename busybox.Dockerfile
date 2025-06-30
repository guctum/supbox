FROM busybox:latest

WORKDIR /supbox

ADD https://github.com/moparisthebest/static-curl/releases/latest/download/curl-amd64 /bin/curl
RUN chmod +x /bin/curl
ENV PATH="/bin:$PATH"
CMD ["/bin/sh"]