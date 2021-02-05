FROM node:10

WORKDIR /root

RUN apt-get update

RUN mkdir bitcore \
    && cd bitcore \
    && npm install digibyte-node@latest \
    && ls -a

ENV PATH /root/bitcore/node_modules/digibyte-node/bin:$PATH

RUN digibyte-node create mynode \
    && cd mynode \
    && digibyte-node install insight-digibyte-api

VOLUME ["/data"]

#COPY litecore-node.json /root/mynode
#COPY node.conf /root/litecoin.conf

CMD [ "digibyte-node", "start" ]

EXPOSE 3000