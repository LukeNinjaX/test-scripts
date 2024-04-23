#!/bin/bash

# node0=47.254.125.52
# node1=47.254.88.213
# node2=47.89.245.129
# node3=127.0.0.1

# node0=47.254.21.82
# node1=47.254.0.56
# node2=47.88.89.55
# node3=47.254.0.138

node0=47.254.23.230
node1=47.254.27.97
node2=47.89.227.104
node3=47.254.68.8
node4=47.254.2.74

stop='pm2 stop evmosd'
del='pm2 del evmosd'
remove='rm -rf ~/.evmosd'

echo -e "\033[32mdelete all the nodes...\033[0m"
echo $del | ssh root@$node0 'bash -s'
echo $del | ssh root@$node1 'bash -s'
echo $del | ssh root@$node2 'bash -s'
echo $del | ssh root@$node3 'bash -s'
echo $del | ssh root@$node4 'bash -s'
echo -e "\033[32mremove workspace of all the nodes...\033[0m"
echo $remove | ssh root@$node0 'bash -s'
echo $remove | ssh root@$node1 'bash -s'
echo $remove | ssh root@$node2 'bash -s'
echo $remove | ssh root@$node3 'bash -s'
echo $remove | ssh root@$node4 'bash -s'