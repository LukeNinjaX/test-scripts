const Web3 = require('@artela/web3');
const { readFileSync} = require("fs");

// 连接到以太坊网络
const web3 = new Web3(new Web3.providers.HttpProvider('http://127.0.0.1:8545'));

// 发送者账户的私钥（在安全环境下处理私钥）
const privateKey = readFileSync('vault.key', 'utf-8').trim();
const recipientKey = readFileSync('private.key', 'utf-8').trim();

// 获取发送账户地址
const account = web3.eth.accounts.privateKeyToAccount(privateKey);
const fromAddress = account.address;

// 获取接受账户地址
const recipient = web3.eth.accounts.privateKeyToAccount(recipientKey);
const toAddress = recipient.address;

// 创建交易对象
const tx = {
    from: fromAddress,
    to: toAddress,
    value: web3.utils.toWei('1', 'ether'),
    gas: 21000, // 用于 ETH 转账的标准 gas 限制
};

// 签名交易
web3.eth.accounts.signTransaction(tx, privateKey).then(signedTx => {
    // 发送交易
    web3.eth.sendSignedTransaction(signedTx.rawTransaction)
        .on('receipt', receipt => {
            console.log('Transaction receipt:', receipt);
        })
        .on('error', console.error);
});
