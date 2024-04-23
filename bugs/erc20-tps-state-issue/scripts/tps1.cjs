const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const tokenBytes = fs.readFileSync("contract/ArtToken.bin", "utf-8")
const tokenAbidata = fs.readFileSync("contract/ArtToken.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

var http = require('http'),
    url = require('url');

async function f() {
    let gasPrice = await web3.eth.getGasPrice();

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }

    let tokenAddress = "0x4ecE860eDC915656945cf6c0a786f037485D6647";
    let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
    let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";
    for (let l = 0; l < 1000000; l++) {
        console.log("=====================================================================");
        console.log("===========================call tx loops: ", l, "===========================");

        let lable = "send 5000 txs, loop " + l
        console.time(lable);
        for (let m = 1; m <= 5000; m++) {
            try {
                let callerFile = 'keys/' + m + '.txt';
                let callerPK = fs.readFileSync(callerFile, 'utf-8');
                let caller = web3.eth.accounts.privateKeyToAccount(callerPK);
                // console.log("call with key: ", callerFile, ", address: ", caller.address);
                web3.eth.accounts.wallet.add(caller.privateKey);
                {
                    let transfer = tokenContract.methods.transfer(receiverAddress, 0);

                    let transferTx = {
                        from: caller.address,
                        to: tokenAddress,
                        data: transfer.encodeABI(),
                        gas: 4000000
                    }
                    let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);
                    // console.log('transfer tx hash: ' + signedTransferTx.transactionHash);

                    // const dt = new Date().toISOString();
                    // let lable = "sent index " + m + ", date: " + dt;
                    // console.time(lable);
                    web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    // console.timeEnd(lable);
                    // await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    //     .on('receipt', receipt => {
                    //         console.log(receipt);
                    //     });
                }
                // await new Promise(r => setTimeout(r, 50));
            } catch (e) {
                console.log("send tx failed, index: " + m, "error: ", e);
                await new Promise(r => setTimeout(r, 1000));
            }
        }

        {
            var opts = url.parse('http://127.0.0.1:26657/num_unconfirmed_txs\?'),
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

        const dt = new Date().toISOString();
        console.log("date time:", dt)
        console.timeEnd(lable);

        // await new Promise(r => setTimeout(r, 1000));
    }

}

f().then();
