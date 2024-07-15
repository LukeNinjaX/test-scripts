const { fetchAdd, fetchCheck, web3, workingDir } = require('./common');
const path = require('path');
const fs = require("fs");

let bankPK = '0x2b853a54c36f51221e06158b3719f5c71359e27d1d047b67cb9d850dbefdd315';

async function f() {
    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount(bankPK)
    web3.atl.accounts.wallet.add(bank.privateKey);

    for (let index = 1; index <= 100; index++) {
        let keyfile = path.join(workingDir, "./keys/" + index + ".txt");
        console.log("topup to: " + keyfile);

        let pk = fs.readFileSync(keyfile, 'utf-8');
        let receiver = web3.atl.accounts.privateKeyToAccount(pk);
        // transfer account from bank to local account
        // the params of getTransactionCount is bank address.
        let bankNonce = await web3.atl.getTransactionCount(bank.address);
        let tx1 = {
            'from': bank,
            'to': receiver.address,
            'value': web3.utils.toWei('10200', 'ether'), // transfer 0.1 eth
            'gas': 200000,
            'gaslimit': 400000,
            'nonce': bankNonce
        };

        let lable = "sendtx"
        console.time(lable);
        // send transaction
        await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
            console.log('transferred from bank to local account');
            console.log(receipt);
        });
        console.timeEnd(lable);
    };

    for (let m = 1; m <= 100; m++) {
        for (let n = 1; n <= 99; n++) {
            let bank2Name = "./keys/" + n + ".txt";
            let bank2file = path.join(workingDir, bank2Name);
            let bank2pk = fs.readFileSync(bank2file, 'utf-8');
            const bank2 = web3.atl.accounts.privateKeyToAccount(bank2pk)
            web3.atl.accounts.wallet.add(bank2.privateKey);

            let keynumber = n * 100 + m;
            let keyname = "./keys/" + keynumber + ".txt";
            let keyfile = path.join(workingDir, keyname);
            console.log("topup to: " + keyname, "from", bank2Name);

            let pk = fs.readFileSync(keyfile, 'utf-8');
            let receiver = web3.atl.accounts.privateKeyToAccount(pk);
            // transfer account from bank to local account
            // the params of getTransactionCount is bank address.
            let bank2Nonce = await web3.atl.getTransactionCount(bank2.address);
            let tx1 = {
                'from': bank2.address,
                'to': receiver.address,
                'value': web3.utils.toWei('100', 'ether'), // transfer 0.1 eth
                'gas': 200000,
                // 'nonce': bank2Nonce
            };

            let lable = "sendtx";

            let signTx1 = await web3.eth.accounts.signTransaction(tx1, bank2.privateKey);
            fetchAdd(signTx1.transactionHash);
            // send transaction
            web3.atl.sendSignedTransaction(signTx1.rawTransaction);
            // await web3.atl.sendSignedTransaction(signTx1.rawTransaction).on('receipt', receipt => {
            //     console.log('transferred from bank to local account');
            //     console.log(receipt);
            // });
        };

        await fetchCheck();
    }

    process.exit(0);
}

f().then();
