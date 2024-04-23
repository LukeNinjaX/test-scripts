#!/bin/bash

# node0=47.254.125.52
# node1=47.254.88.213
# node2=47.89.245.129
# node3=47.254.18.163

# node0=47.254.21.82
# node1=47.254.0.56
# node2=47.88.89.55
# node3=47.254.0.138

node0=47.254.23.230
node1=47.254.27.97
node2=47.89.227.104
node3=47.254.68.8
node4=47.254.2.74

inode0=172.22.72.240
inode1=172.22.72.238
inode2=172.22.72.239
inode3=172.22.72.237
inode4=172.22.72.241

testnet=./testnet

binary=/home/luke/go/bin/artelad
start='pm2 start artelad -- start --log_level info --pruning nothing'


echo -e "\033[32minit testnet files...\033[0m"
if [ -d $testnet ]; then
   rm -rf $testnet
fi
artelad testnet init-files --chain-id artela_11820-1 --v 5 --output-dir ./testnet --keyring-backend=test --starting-ip-address 172.16.10.2

echo
echo -e "\033[32mconfigure the testnet...\033[0m"
cd $testnet
sed -i "s/172.16.10.3/${inode1}/g" node0/artelad/config/config.toml
sed -i "s/172.16.10.4/${inode2}/g" node0/artelad/config/config.toml
sed -i "s/172.16.10.5/${inode3}/g" node0/artelad/config/config.toml
sed -i "s/172.16.10.6/${inode4}/g" node0/artelad/config/config.toml

sed -i "s/172.16.10.2/${inode0}/g" node1/artelad/config/config.toml
sed -i "s/172.16.10.4/${inode2}/g" node1/artelad/config/config.toml
sed -i "s/172.16.10.5/${inode3}/g" node1/artelad/config/config.toml
sed -i "s/172.16.10.6/${inode4}/g" node1/artelad/config/config.toml

sed -i "s/172.16.10.2/${inode0}/g" node2/artelad/config/config.toml
sed -i "s/172.16.10.3/${inode1}/g" node2/artelad/config/config.toml
sed -i "s/172.16.10.5/${inode3}/g" node2/artelad/config/config.toml
sed -i "s/172.16.10.6/${inode4}/g" node2/artelad/config/config.toml

sed -i "s/172.16.10.2/${inode0}/g" node3/artelad/config/config.toml
sed -i "s/172.16.10.3/${inode1}/g" node3/artelad/config/config.toml
sed -i "s/172.16.10.4/${inode3}/g" node3/artelad/config/config.toml
sed -i "s/172.16.10.6/${inode4}/g" node3/artelad/config/config.toml

sed -i "s/172.16.10.2/${inode0}/g" node4/artelad/config/config.toml
sed -i "s/172.16.10.3/${inode1}/g" node4/artelad/config/config.toml
sed -i "s/172.16.10.4/${inode2}/g" node4/artelad/config/config.toml
sed -i "s/172.16.10.5/${inode3}/g" node4/artelad/config/config.toml

sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node0/artelad/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node1/artelad/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node2/artelad/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node3/artelad/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node4/artelad/config/genesis.json

sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node0/artelad/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node1/artelad/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node2/artelad/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node3/artelad/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node4/artelad/config/genesis.json

sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node0/artelad/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node1/artelad/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node2/artelad/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node3/artelad/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node4/artelad/config/app.toml

sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node0/artelad/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node1/artelad/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node2/artelad/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node3/artelad/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node4/artelad/config/genesis.json

sed -i 's/timeout_commit = "3s"/timeout_commit = "1s"/g' node0/artelad/config/config.toml
sed -i 's/timeout_commit = "3s"/timeout_commit = "1s"/g' node1/artelad/config/config.toml
sed -i 's/timeout_commit = "3s"/timeout_commit = "1s"/g' node2/artelad/config/config.toml
sed -i 's/timeout_commit = "3s"/timeout_commit = "1s"/g' node3/artelad/config/config.toml
sed -i 's/timeout_commit = "3s"/timeout_commit = "1s"/g' node4/artelad/config/config.toml

sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node0/artelad/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node1/artelad/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node2/artelad/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node3/artelad/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node4/artelad/config/app.toml

echo
echo -e "\033[32mdistribute testnet files to devices...\033[0m"
echo -e "\033[32mcopying node0....\033[0m"
scp -r ./node0/artelad/ root@$node0:/root/.artelad
echo
echo -e "\033[32mcopying node1....\033[0m"
scp -r ./node1/artelad/ root@$node1:/root/.artelad
echo
echo -e "\033[32mcopying node2....\033[0m"
scp -r ./node2/artelad/ root@$node2:/root/.artelad
echo
echo -e "\033[32mcopying node3....\033[0m"
scp -r ./node3/artelad/ root@$node3:/root/.artelad
echo
echo -e "\033[32mcopying node4....\033[0m"
scp -r ./node4/artelad/ root@$node4:/root/.artelad

echo
echo -e "\033[32mdistribute artelad to devices...\033[0m"
# scp -r $binary root@$node0:/root/.
# scp -r $binary root@$node1:/root/.
# scp -r $binary root@$node2:/root/.
# scp -r $binary root@$node3:/root/.
# scp -r $binary root@$node4:/root/.

echo
echo -e "\033[32mstart node..\033[0m"
echo $start | ssh root@$node0 'bash -s'
echo $start | ssh root@$node1 'bash -s'
echo $start | ssh root@$node2 'bash -s'
echo $start | ssh root@$node3 'bash -s'
echo $start | ssh root@$node4 'bash -s'

echo -e "\033[32mdone!\033[0m"
