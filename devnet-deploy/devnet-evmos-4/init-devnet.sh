#!/bin/bash

# node0=47.254.125.52
# node1=47.254.88.213
# node2=47.89.245.129
# node3=47.254.18.163

# node0=47.254.21.82
# node1=47.254.0.56
# node2=47.88.89.55
# node3=47.254.0.138


# node0=47.254.23.230
node0=47.254.27.97
node1=47.89.227.104
node2=47.254.68.8
node3=47.254.2.74

testnet=./testnet

binary=/home/luke/go/bin/evmosd
start='pm2 start evmosd -- start --home /root/.evmosd --log_level info --chain-id evmos_9000-1 --json-rpc.api eth,txpool,personal,net,debug,web3 --api.enable --json-rpc.enable true'

echo -e "\033[32minit testnet files...\033[0m"
if [ -d $testnet ]; then
   rm -rf $testnet
fi
evmosd testnet init-files --chain-id evmos_9000-1 --v 4 --output-dir ./testnet --starting-ip-address 172.16.10.2

echo
echo -e "\033[32mconfigure the testnet...\033[0m"
cd $testnet
sed -i "s/172.16.10.3/${node1}/g" node0/evmosd/config/config.toml
sed -i "s/172.16.10.4/${node2}/g" node0/evmosd/config/config.toml
sed -i "s/172.16.10.5/${node3}/g" node0/evmosd/config/config.toml

sed -i "s/172.16.10.2/${node0}/g" node1/evmosd/config/config.toml
sed -i "s/172.16.10.4/${node2}/g" node1/evmosd/config/config.toml
sed -i "s/172.16.10.5/${node3}/g" node1/evmosd/config/config.toml

sed -i "s/172.16.10.2/${node0}/g" node2/evmosd/config/config.toml
sed -i "s/172.16.10.3/${node1}/g" node2/evmosd/config/config.toml
sed -i "s/172.16.10.5/${node3}/g" node2/evmosd/config/config.toml

sed -i "s/172.16.10.2/${node0}/g" node3/evmosd/config/config.toml
sed -i "s/172.16.10.3/${node1}/g" node3/evmosd/config/config.toml
sed -i "s/172.16.10.4/${node2}/g" node3/evmosd/config/config.toml

sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node0/evmosd/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node1/evmosd/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node2/evmosd/config/genesis.json
sed -i 's/"extra_eips": \[\]/"extra_eips": \[3855\]/g' node3/evmosd/config/genesis.json

sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node0/evmosd/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node1/evmosd/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node2/evmosd/config/genesis.json
sed -i 's/"amount": "5000000000000000000000"/"amount": "50000000000000000000000000"/g' node3/evmosd/config/genesis.json

sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node0/evmosd/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node1/evmosd/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node2/evmosd/config/app.toml
sed -i 's/allow-unprotected-txs = false/allow-unprotected-txs = true/g' node3/evmosd/config/app.toml

sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node0/evmosd/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node1/evmosd/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node2/evmosd/config/genesis.json
sed -i 's/"allow_unprotected_txs": false/"allow_unprotected_txs": true/g' node3/evmosd/config/genesis.json

sed -i 's/timeout_commit = "5s"/timeout_commit = "1s"/g' node0/evmosd/config/config.toml
sed -i 's/timeout_commit = "5s"/timeout_commit = "1s"/g' node1/evmosd/config/config.toml
sed -i 's/timeout_commit = "5s"/timeout_commit = "1s"/g' node2/evmosd/config/config.toml
sed -i 's/timeout_commit = "5s"/timeout_commit = "1s"/g' node3/evmosd/config/config.toml

sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node0/evmosd/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node1/evmosd/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node2/evmosd/config/app.toml
sed -i 's/address = "127.0.0.1:8545"/address = "0.0.0.0:8545"/g' node3/evmosd/config/app.toml

echo
echo -e "\033[32mdistribute testnet files to devices...\033[0m"
echo -e "\033[32mcopying node0....\033[0m"
scp -r ./node0/evmosd/ root@$node0:/root/.evmosd
echo
echo -e "\033[32mcopying node1....\033[0m"
scp -r ./node1/evmosd/ root@$node1:/root/.evmosd
echo
echo -e "\033[32mcopying node2....\033[0m"
scp -r ./node2/evmosd/ root@$node2:/root/.evmosd
echo
echo -e "\033[32mcopying node3....\033[0m"
scp -r ./node3/evmosd/ root@$node3:/root/.evmosd

echo
echo -e "\033[32mdistribute evmosd to devices...\033[0m"
scp -r $binary root@$node0:/root/.
scp -r $binary root@$node1:/root/.
scp -r $binary root@$node2:/root/.
scp -r $binary root@$node3:/root/.

echo
echo -e "\033[32madd genesis contract for AA..\033[0m"
echo "/root/evmosd add-genesis-contract $aaaddress $aacontract" | ssh root@$node0 'bash -s'
echo "/root/evmosd add-genesis-contract $aaaddress $aacontract" | ssh root@$node1 'bash -s'
echo "/root/evmosd add-genesis-contract $aaaddress $aacontract" | ssh root@$node2 'bash -s'
echo "/root/evmosd add-genesis-contract $aaaddress $aacontract" | ssh root@$node3 'bash -s'

echo
echo -e "\033[32mstart node..\033[0m"
echo $start | ssh root@$node0 'bash -s'
echo $start | ssh root@$node1 'bash -s'
echo $start | ssh root@$node2 'bash -s'
echo $start | ssh root@$node3 'bash -s'

echo -e "\033[32mdone!\033[0m"
