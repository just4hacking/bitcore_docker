FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

#bitcoin cash is split into two changes bcha and bchn. bchn is legacy one
#bitcoin cash client doesnt support bchn since 0.22.10, so be careful
RUN wget https://download.bitcoinabc.org/bchn/0.22.7/linux/bitcoin-abc-0.22.7-x86_64-linux-gnu.tar.gz \
    && tar xvf bitcoin-abc-0.22.7-x86_64-linux-gnu.tar.gz

ENV PATH /root/bitcoin-abc-0.22.7/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/bitcoin-abc-0.22.7/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["bitcoind", "-conf=/root/node.conf"]
