const fs = require('fs');
const path = require('path');
const { fetchAdd, fetchCheck, web3, workingDir } = require('./common');

const tokenBytes = fs.readFileSync(path.join(workingDir, "contract/event.bin"), "utf-8")
const tokenAbidata = fs.readFileSync(path.join(workingDir, "contract/event.abi"), "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

async function f() {
    let tokenAddress = "0x0bE791946279670fd54b7310F244b920fC621b63";
    let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
    for (let l = 0; l < 1000000; l++) {
        console.log("=====================================================================");
        console.log("===========================call tx loops: ", l, "===========================");

        let lable = "send 5000 txs, loop " + l
        console.time(lable);
        for (let m = 1; m <= 5000; m++) {
            try {
                let callerFile = path.join(workingDir, 'keys/' + m + '.txt');
                let callerPK = fs.readFileSync(callerFile, 'utf-8');
                let caller = web3.eth.accounts.privateKeyToAccount(callerPK);
                // console.log("call with key: ", callerFile, ", address: ", caller.address);
                web3.eth.accounts.wallet.add(caller.privateKey);
                {
                    let transfer = tokenContract.methods.sendEvent();

                    let transferTx = {
                        from: caller.address,
                        to: tokenAddress,
                        data: transfer.encodeABI(),
                        gasPrice: 10,
                        gas: 1000000
                    }
                    let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);

                    // const dt = new Date().toISOString();
                    // let lable = "sent index " + m + ", date: " + dt + ", hash: " + signedTransferTx.transactionHash;
                    // console.time(lable);
                    // fetchAdd(signedTransferTx.transactionHash);
                    // web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    // console.timeEnd(lable);

                    await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                        .on('receipt', receipt => {
                            console.log(receipt);
                        });
                    if (m % 100 == 0) {
                        await fetchCheck()
                    }
                }
            } catch (e) {
                console.log("send tx failed, index: " + m, "error: ", e);
                await new Promise(r => setTimeout(r, 1000));
            }
        }

        await fetchCheck()

        const dt = new Date().toISOString();
        console.log("date time:", dt)
        console.timeEnd(lable);

    }

}

f().then();
