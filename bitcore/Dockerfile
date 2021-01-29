FROM node:10

RUN apt-get update 

WORKDIR /root

RUN git clone https://github.com/bitpay/bitcore \
    && cd bitcore \
    && git checkout master

WORKDIR /root/bitcore

RUN npm install
RUN npm run bootstrap
RUN npm run compile

COPY bitcore.config.json /root/bitcore

CMD ["npm", "run", "node"]

EXPOSE 8100
EXPOSE 3000