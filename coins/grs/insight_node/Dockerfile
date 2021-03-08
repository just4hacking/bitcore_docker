FROM node:0.10.48

RUN apt update \
    && apt install wget -y

WORKDIR /root

#download groestlcoin node
RUN wget https://github.com/Groestlcoin/groestlcoin/releases/download/v2.21.0/groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz \
    && tar xvf groestlcoin-2.21.0-x86_64-linux-gnu.tar.gz

ENV PATH /root/groestlcoin-2.21.0/bin:$PATH

#install insight
RUN apt update -y \
    && git clone https://github.com/GroestlCoin/insight \
    && cd insight \
    && npm install async@0.9.2 \
    && npm install --unsafe-perm

ENV INSIGHT_PORT 3000
ENV INSIGHT_FORCE_RPC_SYNC 1

COPY node.conf /root
COPY start.sh /root

# Create the data volume.
VOLUME ["/data"]
CMD ["sh", "/root/start.sh"]
