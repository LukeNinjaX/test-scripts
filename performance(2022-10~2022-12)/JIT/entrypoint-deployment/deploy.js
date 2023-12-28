const Web3 = require('@artela/web3');
const { readFileSync} = require("fs");

// 连接到以太坊网络（这里使用的是 Infura 的主网节点，你可以替换为自己的节点）
const web3 = new Web3('http://127.0.0.1:8545');

const signedTx = readFileSync('signedTx.txt', 'utf-8').trim();

web3.eth.sendSignedTransaction(signedTx)
    .on('receipt', receipt => {
        console.log('Contract deployed at address:', receipt.contractAddress);
    })
    .on('error', console.error);
