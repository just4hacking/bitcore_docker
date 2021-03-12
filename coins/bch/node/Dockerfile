FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

#bitcoin cash is split into two changes bcha and bchn. bchn is legacy one
#bitcoin cash client doesnt support bchn since 0.22.10, so be careful
RUN wget https://github.com/bitcoin-cash-node/bitcoin-cash-node/releases/download/v22.2.0/bitcoin-cash-node-22.2.0-x86_64-linux-gnu.tar.gz \
    && mkdir bitcoin-cash-node \
    && tar xvf bitcoin-cash-node-22.2.0-x86_64-linux-gnu.tar.gz

ENV PATH /root/bitcoin-cash-node-22.2.0/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/bitcoin-cash-node-22.2.0/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["bitcoind", "-conf=/root/node.conf"]
