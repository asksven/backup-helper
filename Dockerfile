FROM alpine:3.20.3

LABEL maintainer="sven.knispel@pobox.com"

RUN apk add --no-cache postgresql16-client mysql-client mongodb-tools curl bash openssl
COPY getmc.sh / 
RUN /getmc.sh
COPY getinfluxdb2-cli.sh /
RUN ls /
RUN /getinfluxdb2-cli.sh

CMD [ "/bin/bash" ]
