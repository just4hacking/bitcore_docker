FROM node:10

WORKDIR /root

RUN apt update -y

COPY config /root/.ssh/
COPY secrets/pricer_ssh_pull_key /root/

RUN chmod 600 /root/pricer_ssh_pull_key \
    && ssh-keyscan github.com >> ~/.ssh/known_hosts \
    && git clone git@github.com-pricer:bitfi/pricer.git \
    && cd pricer \ 
    && npm install

CMD [ "node", "/root/pricer/server.js" ]