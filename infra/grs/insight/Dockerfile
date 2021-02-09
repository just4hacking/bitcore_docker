FROM node:0.10.48

WORKDIR /root

RUN apt update -y \
    && git clone https://github.com/GroestlCoin/insight \
    && cd insight \
    && npm install async@0.9.2 \
    && npm install --unsafe-perm

ENV INSIGHT_PORT 3000
ENV INSIGHT_FORCE_RPC_SYNC 1

WORKDIR /root/insight

CMD [ "node", "./node_modules/.bin/insight-bitcore-api" ]