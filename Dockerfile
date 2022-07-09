FROM --platform=$BUILDPLATFORM alpine:3.16.0
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "*** BUILDPLATFORM=$BUILDPLATFORM TARGETPLATFORM=$TARGETPLATFORM"

ARG BUILD_VERSION

RUN apk add bash openssh-server openssh-client rsync
COPY ./entrypoint.sh /entrypoint.sh
RUN mkdir /data && mv /etc/ssh /etc/ssh.orig && chmod 0755 /entrypoint.sh

EXPOSE 22
VOLUME [ "/data" ]

CMD [ "/entrypoint.sh" ]
