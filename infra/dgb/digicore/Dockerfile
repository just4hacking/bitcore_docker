FROM node:10

WORKDIR /root

RUN apt-get update

RUN mkdir bitcore \
    && cd bitcore \
    && npm install digibyte-node@latest

ENV PATH /root/bitcore/node_modules/digibyte-node/bin:$PATH

RUN digibyte-node create mynode \
    && cd mynode \
    && digibyte-node install insight-digibyte-api

VOLUME ["/data"]

COPY digibyte-node.json /root/mynode/digibyte-node.json
#COPY node.conf /root/mynode/bitcoin.conf

WORKDIR /root/mynode
CMD [ "digibyte-node", "start" ]

EXPOSE 3000