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

RUN wget https://github.com/dashpay/dash/releases/download/v0.16.1.1/dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && tar -xvzf dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && rm dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz

ENV PATH /root/dashcore-0.16.1/bin:$PATH

COPY node.conf /root

WORKDIR /root/mynode
CMD [ "dashcore-node", "start" ]

EXPOSE 3000

