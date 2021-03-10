### how to create keys?
`ssh-keygen -q -t rsa -N '' -f pricer_ssh_pull_key`

`pricer_ssh_pull_key` and `pricer_ssh_pull_key.pub` files will be generated

`pricer_ssh_pull_key.pub` should be added to github 

visit https://docs.github.com/en/developers/overview/managing-deploy-keys#:~:text=From%20your%20repository%2C%20click%20Settings,write%20access%20to%20the%20repository
for more information