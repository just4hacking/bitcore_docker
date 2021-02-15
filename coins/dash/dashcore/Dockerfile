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

RUN wget https://github.com/dashpay/dash/releases/download/v0.16.1.1/dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && tar -xvzf dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && rm dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz

COPY dashcore-node.json /root/mynode/dashcore-node.json

ARG DASH_API_PORT

ENV PATH /root/dashcore-0.16.1/bin:$PATH
ENV DASH_API_PORT ${DASH_API_PORT}

RUN sed -i -e 's/${DASH_API_PORT}/'"${DASH_API_PORT}"'/g' /root/mynode/dashcore-node.json

COPY node.conf /root

WORKDIR /root/mynode
CMD [ "dashcore-node", "start" ]

EXPOSE ${DASH_API_PORT}

