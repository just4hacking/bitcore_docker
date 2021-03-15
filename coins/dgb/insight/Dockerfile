FROM node:10

WORKDIR /root

RUN apt-get update \
    && git clone https://github.com/DigiByte-Core/insight-api --single-branch --branch async \
    && cd insight-api \
    && npm install

VOLUME ["/data"]

ENV DIGIEXPLORER_PORT 3000
ENV DIGIEXPLORER_DB /data/db
ENV DIGIBYTED_DATADIR /data/blockchain/

WORKDIR /root/insight-api
CMD [ "node", "digiexplorer.js" ]

EXPOSE 3000