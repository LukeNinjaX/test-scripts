const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');
const fs = require('fs')
const path = require('path')

let arr = new Array();
let bankPK = '0x7267547f54354c9e42b7d5b01ff3ffddca74ffaafcb9829099258efb4aea2a02';

function traverseFolder(folderPath) {
    const files = fs.readdirSync(folderPath);
    files.forEach(function (fileName) {
        const filePath = path.join(folderPath, fileName);
        const stats = fs.statSync(filePath);
        if (stats.isDirectory()) {
            traverseFolder(filePath);
        } else {
            arr.push(filePath);
        }
    })
}

async function f() {
    traverseFolder("./keys");
    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount(bankPK)
    web3.atl.accounts.wallet.add(bank.privateKey);

    for (let element of arr) {
        console.log("topup to: " + element);
        let pk = fs.readFileSync(element, 'utf-8');
        let receiver = web3.atl.accounts.privateKeyToAccount(pk);
        // transfer account from bank to local account
        // the params of getTransactionCount is bank address.
        let bankNonce = await web3.atl.getTransactionCount(bank.address);
        let tx1 = {
            'from': bank,
            'to': receiver.address,
            'value': web3.utils.toWei('1', 'ether'), // transfer 0.1 eth
            'gas': 2000000,
            'gaslimit': 4000000,
            'nonce': bankNonce
        };

        // send transaction
        await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
            console.log('transferred from bank to local account');
            console.log(receipt);
        });
    };
}

f().then();

