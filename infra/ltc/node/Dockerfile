FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://download.litecoin.org/litecoin-0.18.1/linux/litecoin-0.18.1-x86_64-linux-gnu.tar.gz \
    && tar xvf litecoin-0.18.1-x86_64-linux-gnu.tar.gz

ENV PATH /root/litecoin-0.18.1-x86_64-linux-gnu/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/litecoin-0.18.1-x86_64-linux-gnu/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["bitcoind", "-conf=/root/node.conf"]

# Document that the service listens on port 8333.
EXPOSE 8333
