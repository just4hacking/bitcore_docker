FROM node:10

ARG BITCORE_REPO=https://github.com/bitpay/bitcore
ARG BITCORE_BRANCH=master

RUN apt-get update 

WORKDIR /root

RUN git clone ${BITCORE_REPO} bitcore \
    && cd bitcore \
    && git checkout ${BITCORE_BRANCH}

WORKDIR /root/bitcore

RUN npm install
RUN npm run bootstrap
RUN npm run compile

COPY bitcore.config.json /root/bitcore

CMD ["npm", "run", "node"]

EXPOSE 8100
EXPOSE 3000