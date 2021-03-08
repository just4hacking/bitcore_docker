## how to run

## clone the repository
`clone https://github.com/just4hacking/infra`

## go to load balancer directory
`cd ./infra/load-balancer`

## build the load balancer image
`docker image build .  -t loadbalancer`

## run it
`docker container run -d --restart unless-stopped -p 80:80 -p 443:443 --name loadbalancer loadbalancer`