## how to run

## clone the repository
`clone https://github.com/just4hacking/infra`

## go to load balancer directory
`cd ./infra/load-balancer`

## build the load balancer image
`docker image build .  -t loadbalancer`

## run it!
`docker container run -d --restart unless-stopped -p 80:80 -p 443:443 --name loadbalancer loadbalancer`

## to see log
`docker logs loadbalancer -f`

## how to make changes to a running rontainer?

make changes to config/nginx.conf file

to check if changes are correct run
`docker container exec load-balancer_nginx_1 nginx -t`

then reload the nginx server by typing
`docker container exec load-balancer_nginx_1 -s reload`