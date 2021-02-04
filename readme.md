## BCH + BITCORE API SERVER

### clone the project and go to root directory
`git clone https://github.com/just4hacking/infra && cd infra/infra`

### build containers
`docker-compose build`

### run containers in a detached mode
`docker-compose up -d` 

Test api by navigating to http://localhost:3000/api/BCH/mainnet/block/tip

Please visit [api docs](https://github.com/bitpay/bitcore/blob/master/packages/bitcore-node/docs/api-documentation.md)
for more information


### to follow containers logs output
`docker-compose logs -f`

### to put the containers down
`docker-compose down`

### note
Make sure to update volume path in docker-compose file

`mkdir /data/blockchain -p && mkdir /data/db`

And then change docker-compose.yml accordingly
```
volumes: 
  - /data/db:/data/db
      
volumes: 
  - /blockchain:/data
```

When you make changes to the project source files make sure 
that you run

`docker-compose build`
