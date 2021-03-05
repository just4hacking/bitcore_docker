FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://www.bitcoinunlimited.info/downloads/bch-unlimited-1.9.0.1-linux64.tar.gz \
    && tar xvf bch-unlimited-1.9.1.0-linux64.tar.gz

ENV PATH /root/bch-unlimited-1.9.*.*/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/bch-unlimited-1.9.1.0/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["bitcoind", "-conf=/root/node.conf"]
