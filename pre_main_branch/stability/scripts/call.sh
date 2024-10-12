#!/bin/bash

# NODE_URL="http://127.0.0.1:8545"
NODE_URL="https://betanet-inner2.artela.network"
TX_HASH="0x3218c9e73aa6fade31fdacac2fb00d529821e9a66d9077bfce6f3d64269508d4"

TX_DETAILS=$(curl -s -X POST \
  -H "Content-Type: application/json" \
  --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["'"$TX_HASH"'"],"id":1}' \
  ${NODE_URL})

# echo $TX_DETAILS

# TX_DETAILS='{"jsonrpc":"2.0","id":83,"result":{"blockHash":"0x0ccd28e6b812c30090a2d16d3fd4cadcb9571f87db26e41ea4d04fee3aa1f4be","blockNumber":"0x88b","from":"0x442e5a8743b3d15f5ebc9fc85f422cbaf64e8ebc","gas":"0xf4240","gasPrice":"0x7","hash":"0x0c451c7a7638361ef1b4113b06107f8675bc18c1d880a3c52b458c2479177340","input":"0x3446f1d2000000000000000000000000aa43d16140553845c9fe74b7d2fc0dce8a8e8bda0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000f5c81087f91b7dabc84adac0c9c4283f9ed986c9ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff","nonce":"0x2435","to":"0x0000000000000000000000000000000000a27e14","transactionIndex":"0x8","value":"0x0","type":"0x0","chainId":"0x2e2c","v":"0x5c7c","r":"0x7430135e91fc0b23eb56f0f37668a1d95c71d6f25062e80d8c786b5c0ebc1ab0","s":"0x5e04ef18afb23557fe56d913117b14727326889c71281297d48c961ee1632d08"}}'
TO=$(echo $TX_DETAILS | jq -r '.result.to')
BLOCK_NUMBER=$(echo $TX_DETAILS | jq -r '.result.blockNumber')
INPUT=$(echo $TX_DETAILS | jq -r '.result.input')
FROM=$(echo $TX_DETAILS | jq -r '.result.from')
GAS=$(echo $TX_DETAILS | jq -r '.result.gas')
GAS_PRICE=$(echo $TX_DETAILS | jq -r '.result.gasPrice')
VALUE=$(echo $TX_DETAILS | jq -r '.result.value')
DATA='{"jsonrpc":"2.0","method":"eth_call","params":[{"to":"'"$TO"'","data":"'"$INPUT"'","from":"'"$FROM"'","gas":"'"$GAS"'","gasPrice":"'"$GAS_PRICE"'","value":"'"$VALUE"'"}, "'"$BLOCK_NUMBER"'"],"id":1}'

echo $DATA

curl -s -X POST \
  -H "Content-Type: application/json" \
  --data "${DATA}" \
  ${NODE_URL}

echo "Transaction replay result: $CALL_RESULT"