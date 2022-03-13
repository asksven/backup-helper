FROM alpine:3.15.0

LABEL maintainer="sven.knispel@pobox.com"

RUN apk add --no-cache postgresql-client mysql-client mongodb-tools curl bash
COPY getmc.sh /
RUN /getmc.sh

CMD [ "/bin/bash" ]
