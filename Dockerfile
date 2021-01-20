FROM alpine

RUN apk add --no-cache namecoin namecoin-cli bash

RUN mkdir .namecoin && \
    mkdir .namecoin-2

COPY node1.conf .namecoin/namecoin.conf
COPY node2.conf .namecoin-2/namecoin.conf
COPY entrypoint.sh entrypoint.sh
RUN chmod 777 entrypoint.sh

CMD ["./entrypoint.sh"]