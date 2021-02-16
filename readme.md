## NODE INFRASTRUCTURE

### clone the project and go to root directory
`git clone https://github.com/just4hacking/infra && cd infra/infra`

### build containers
`docker-compose -f coins/[coin_name]/docker-compose.yml build`

### run containers in a detached mode
`docker-compose -f coins/[coin_name]/docker-compose.yml build -d`

### run multiple nodes
`docker-compose -f coins/bch/docker-compose.yml -f coins/ltc/docker-compose.yml run -d`

you can run as many nodes as you want like this

### how to test
check out [request.http](https://github.com/just4hacking/infra/blob/master/request.http)

### to follow containers logs output
`docker-compose logs -f`

### to put the containers down
`docker-compose down`

### note
blockchains will be saved to the [DATA_DIR](https://github.com/just4hacking/infra/blob/377e2b3e09502cbec1e87c2a02f3bfe0667659ef/.env#L3) environment variable which 
can be set in [.env](https://github.com/just4hacking/infra/blob/master/.env) file

When you make changes to the project source files make sure 
that you always build containers before running

`docker-compose build`
