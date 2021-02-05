FROM node:0.10.48

WORKDIR /root

RUN apt-get update \
    && git clone https://github.com/DigiByte-Core/insight-api \
    && cd insight-api \
    && npm install bignum@0.13.0 --save \ 
    && npm install

VOLUME ["/data"]

#COPY digibyte-node.json /root/mynode/digibyte-node.json

WORKDIR /root/insight-api
CMD [ "node", "insight.js" ]

EXPOSE 3000