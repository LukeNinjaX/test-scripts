const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.01:8545');
const fs = require('fs')
const path = require('path')

let arr = new Array();
let bankPK = '0x7967c81565f7c5ef1103f452a807e708c00d905b6e6ed3d29d80950b17238460';
let receiver = "0xD995962956CA1EFF8AF3D41F365500F8EC465C0C";

async function f() {
    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount(bankPK)
    web3.atl.accounts.wallet.add(bank.privateKey);

    // transfer account from bank to local account
    // the params of getTransactionCount is bank address.
    let bankNonce = await web3.atl.getTransactionCount(bank.address);
    let tx1 = {
        'from': bank,
        'to': receiver,
        'value': web3.utils.toWei('10000000', 'ether'), // transfer 0.1 eth
        'gas': 2000000,
        'nonce': bankNonce
    };

    // send transaction
    await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });
}

f().then();

