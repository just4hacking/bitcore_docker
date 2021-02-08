FROM ubuntu:18.04

RUN apt update \
    && apt upgrade -y \
    && apt install wget -y

WORKDIR /root

RUN wget https://github.com/dashpay/dash/releases/download/v0.16.1.1/dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && tar -xvzf dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz \
    && rm dashcore-0.16.1.1-x86_64-linux-gnu.tar.gz

ENV PATH /root/dashcore-0.16.1/bin:$PATH

# Create the data volume.
VOLUME ["/data"]

COPY node.conf /root

WORKDIR /root/dashcore-0.16.1/bin

CMD ["dashd", "-conf=/root/node.conf"]
