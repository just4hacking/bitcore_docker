FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

#download groestlcoin node
RUN wget https://github.com/Groestlcoin/groestlcoin/releases/download/v2.13.3/groestlcoin-2.13.3-x86_64-linux-gnu.tar.gz \
    && mkdir groestlcoin-2.13.3/bin -p \
    && tar xvf groestlcoin-2.13.3-x86_64-linux-gnu.tar.gz --directory groestlcoin-2.13.3/bin

ENV PATH /root/groestlcoin-2.13.3/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/groestlcoin-2.21.0/bin

CMD ["groestlcoind", "-conf=/root/node.conf"]