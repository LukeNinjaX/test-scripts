const fs = require('fs');
const { fetchAdd, fetchCheck, web3, workingDir } = require('./common');

const tokenBytes = fs.readFileSync("contract/ArtToken.bin", "utf-8")
const tokenAbidata = fs.readFileSync("contract/ArtToken.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

async function f() {
    let gasPrice = await web3.eth.getGasPrice();

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }

    let tokenAddress = "0x88cfd0917051EbBb098b3Fa053B01eBb74FE401a";
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
                        gasPrice: 10,
                        gas: 200000
                    }
                    let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);

                    const dt = new Date().toISOString();
                    let lable = "sent index " + m + ", date: " + dt + ", hash: " + signedTransferTx.transactionHash;
                    console.time(lable);
                    fetchAdd(signedTransferTx.transactionHash);
                    web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    console.timeEnd(lable);

                    // await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    //     .on('receipt', receipt => {
                    //         console.log(receipt);
                    //     });
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
