FROM ubuntu:18.04

RUN apt update \
    && apt install wget -y

WORKDIR /root

RUN wget https://github.com/DigiByte-Core/digibyte/releases/download/v7.17.2/digibyte-7.17.2-x86_64-linux-gnu.tar.gz \
    && tar xvf digibyte-7.17.2-x86_64-linux-gnu.tar.gz

ENV PATH /root/digibyte-7.17.2/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/digibyte-7.17.2/bin
# Set the start command. This starts bchd with
# flags to save the blockchain data and the
# config on a docker volume.
CMD ["digibyted", "-conf=/root/node.conf"]
