FROM node:0.10.48

WORKDIR /root

RUN apt update -y \
    && apt install cron -y \
    && git clone https://github.com/GroestlCoin/insight \
    && cd insight \
    && npm install async@0.9.2 \
    && npm install --unsafe-perm

ENV INSIGHT_PORT 3000
ENV INSIGHT_FORCE_RPC_SYNC 1
ENV INSIGHT_DB /data/db
ENV BITCOIND_DATADIR /data/blockchain

VOLUME ["/data"]

#COPY config.js /root/insight/node_modules/insight-bitcore-api/config/config.js

WORKDIR /root/insight

#CMD [ "sleep", "1d" ]
CMD [ "node", "./node_modules/.bin/insight-bitcore-api" ]