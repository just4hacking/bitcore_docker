FROM node:10

RUN apt update -y \ 
    && apt upgrade -y

WORKDIR /root

RUN git clone https://github.com/dashevo/dashcore-node \
    && cd dashcore-node \
    && npm install 

ENV PATH /root/dashcore-node/bin:$PATH

RUN dashcore-node create /root/mynode \
    && cd /root/mynode \
    && dashcore-node install @dashevo/insight-api \
    && dashcore-node install @dashevo/insight-ui

COPY dashcore-node.json /root/mynode/dashcore-node.json

WORKDIR /root/mynode
CMD [ "dashcore-node", "start" ]

EXPOSE 3000

