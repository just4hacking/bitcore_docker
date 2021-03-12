FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://github.com/Bitcoin-ABC/bitcoin-abc/releases/download/v0.22.15/bitcoin-abc-0.22.15-x86_64-linux-gnu.tar.gz \
    && tar xvf bitcoin-abc-0.22.15-x86_64-linux-gnu.tar.gz

ENV PATH /root/bitcoin-abc-0.22.15/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/bitcoin-abc-0.22.15/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["bitcoind", "-conf=/root/node.conf"]
