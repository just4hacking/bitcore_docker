FROM node:0.10.48

RUN apt update -y \
    && apt upgrade -y
    #&& apt install build-essential libzmq3-dev -y

WORKDIR /root

RUN git clone https://github.com/rnicoll/insight-api-dogecoin insight-api \
    && cd insight-api \
    && npm install bignum@0.13.0 --save \ 
    && npm install glob@7.1.6 \
    && npm install morgan@1.9.1 \
    && npm install
    
ENV INSIGHT_PORT 3000
ENV INSIGHT_FORCE_RPC_SYNC 1
ENV INSIGHT_DB /data

VOLUME ["/data"]

WORKDIR /root/insight-api

CMD ["node", "insight.js"]

EXPOSE 3000


