FROM alpine:3.16.2

LABEL maintainer="sven.knispel@pobox.com"

RUN apk add --no-cache postgresql-client mysql-client mongodb-tools curl bash openssl
COPY getmc.sh / 
RUN /getmc.sh
COPY getinfluxdb2-cli.sh /
RUN ls /
RUN /getinfluxdb2-cli.sh

CMD [ "/bin/bash" ]
