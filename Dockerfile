FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y install wget && \
    wget https://www.namecoin.org/files/namecoin-core/namecoin-core-0.19.0.1/namecoin-0.19.0.1-x86_64-linux-gnu.tar.gz && \
    tar -xvzf namecoin-0.19.0.1-x86_64-linux-gnu.tar.gz

RUN cp -f namecoin-0.19.0.1/bin/* /bin
RUN chmod 777 namecoin-0.19.0.1/bin/namecoin*

RUN mkdir .namecoin && \
    mkdir .namecoin-2

COPY node1.conf .namecoin/namecoin.conf
COPY node2.conf .namecoin-2/namecoin.conf
COPY entrypoint.sh entrypoint.sh
RUN chmod 777 entrypoint.sh

CMD ["./entrypoint.sh"]