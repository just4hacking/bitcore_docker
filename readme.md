## NODE INFRASTRUCTURE

### clone the project and go to root directory
`git clone https://github.com/just4hacking/infra && cd infra/infra`

### build containers
`docker-compose -f coins/[coin_name]/docker-compose.yml build`

### run containers in a detached mode
`docker-compose -f coins/[coin_name]/docker-compose.yml build -d`

## run multiple nodes
`docker-compose -f coins/bch/docker-compose.yml -f coins/ltc docker-compose.yml run -d`


check request.http in the roor directory for test api requests

### to follow containers logs output
`docker-compose logs -f`

### to put the containers down
`docker-compose down`

### note
Blockchains will be saved to DATA_DIR environment variable which 
can be set in .env file


When you make changes to the project source files make sure 
that you always build containers before running

`docker-compose build`
