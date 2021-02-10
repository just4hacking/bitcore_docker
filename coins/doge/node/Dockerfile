FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://github.com/dogecoin/dogecoin/releases/download/v1.14.2/dogecoin-1.14.2-x86_64-linux-gnu.tar.gz \
    && tar xvf dogecoin-1.14.2-x86_64-linux-gnu.tar.gz

ENV PATH /root/dogecoin-1.14.2/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/dogecoin-1.14.2/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["dogecoind", "-conf=/root/node.conf"]
