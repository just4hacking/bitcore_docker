#!/bin/bash

groestlcoind -conf=/root/node.conf;

node /root/insight/node_modules/.bin/insight-bitcore-api;

sleep infinity;