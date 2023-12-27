const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');
const fs = require('fs')
const path = require('path')

let bankPK = '0xe1d2848607972a1c7b87a389b532b8b12919672c794302427fa7253217a7899d';
var http = require('http'),
    url = require('url');

async function f() {
    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount(bankPK)
    web3.atl.accounts.wallet.add(bank.privateKey);

    for (let index = 1; index <= 100; index++) {
        let keyfile = "./keys/" + index + ".txt";
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
            'gas': 2000000,
            'gaslimit': 4000000,
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
            let bank2file = "./keys/" + n + ".txt";
            let bank2pk = fs.readFileSync(bank2file, 'utf-8');
            const bank2 = web3.atl.accounts.privateKeyToAccount(bank2pk)
            web3.atl.accounts.wallet.add(bank2.privateKey);

            let keynumber = n * 100 + m;
            let keyfile = "./keys/" + keynumber + ".txt";
            console.log("topup to: " + keyfile, "from", bank2file);

            let pk = fs.readFileSync(keyfile, 'utf-8');
            let receiver = web3.atl.accounts.privateKeyToAccount(pk);
            // transfer account from bank to local account
            // the params of getTransactionCount is bank address.
            let bank2Nonce = await web3.atl.getTransactionCount(bank2.address);
            let tx1 = {
                'from': bank2.address,
                'to': receiver.address,
                'value': web3.utils.toWei('100', 'ether'), // transfer 0.1 eth
                'gas': 2000000,
                'gaslimit': 4000000,
                // 'nonce': bank2Nonce
            };

            let lable = "sendtx"

            let signTx1 = await web3.eth.accounts.signTransaction(tx1, bank2.privateKey);
            // send transaction
            web3.atl.sendSignedTransaction(signTx1.rawTransaction);
            // await web3.atl.sendSignedTransaction(signTx1.rawTransaction).on('receipt', receipt => {
            //     console.log('transferred from bank to local account');
            //     console.log(receipt);
            // });
        };
        {
            var opts = url.parse('http://127.0.0.1:26657/num_unconfirmed_txs?'),
                data = { title: 'Test' };
            opts.headers = {};
            opts.headers['Content-Type'] = 'application/json';

            let clear = false;
            for (; ;) {
                if (clear) {
                    break;
                }
                http.request(opts, function (res) {
                    res.on('data', function (chunk) {
                        console.log('BODY: ' + chunk);
                        if (chunk.includes('"n_txs":"0"')) {
                            clear = true;
                        }
                    });
                    res.pipe(process.stdout);
                }).end(JSON.stringify(data));
                await new Promise(r => setTimeout(r, 300));
            }
        }
        await new Promise(r => setTimeout(r, 1000));
    }
}

f().then();
