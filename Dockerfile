FROM alpine:3.12

RUN apk add --no-cache \
  bash \
  xvfb picom \
  xeyes

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
