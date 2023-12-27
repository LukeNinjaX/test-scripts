const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');
const fs = require('fs')
const path = require('path')

let arr = new Array();
let bankPK = '0xf8fab8b677b45a4e8f738dad2ae385f07464d1c810dac23dd15a0fa648fe184b';

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

    let index = 0;
    let total = arr.length;
    for (let element of arr) {
        index = index + 1;
        console.log("topup to: " + element, index + "/" + total);

        try {
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
        } catch (e) {
            console.log("topup to " + element + " error: ", e);
            await new Promise(r => setTimeout(r, 1000));
        }
    };
}

f().then();
