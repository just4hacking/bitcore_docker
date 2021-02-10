FROM node:10

WORKDIR /root

RUN apt-get update

RUN mkdir bitcore \
    && cd bitcore \
    && npm install litecore-node@latest

ENV PATH /root/bitcore/node_modules/litecore-node/bin:$PATH

RUN litecore-node create mynode \
    && cd mynode \
    && litecore-node install insight-lite-api

VOLUME ["/data"]

COPY litecore-node.json /root/mynode/litecore-node.json
#COPY node.conf /data/bitcoin.conf

WORKDIR /root/mynode
CMD [ "litecore-node", "start" ]

EXPOSE 3000