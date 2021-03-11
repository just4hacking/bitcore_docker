FROM node:10.17.0

WORKDIR /root

RUN apt-get update \
    && git clone https://github.com/DigiByte-Core/insight \
    && cd insight \
    && npm install

VOLUME ["/data"]

ENV INSIGHT_FORCE_RPC_SYNC 1

WORKDIR /root/insight
CMD [ "npm", "start" ]

EXPOSE 3000