FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://github.com/Groestlcoin/groestlcoin/releases/download/v2.21.0/groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz \
    && tar xvf groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz

ENV PATH /root/groestlcoin-2.21.0/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/groestlcoin-2.21.0/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["groestlcoind", "-conf=/root/node.conf"]
