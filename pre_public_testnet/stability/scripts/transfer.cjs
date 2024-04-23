const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const tokenBytes = fs.readFileSync("contract/ArtToken.bin", "utf-8")
const tokenAbidata = fs.readFileSync("contract/ArtToken.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

async function f() {
    // load local account from private key
    let privateFile = 'keys/1.txt';
    let pk = fs.readFileSync(privateFile, 'utf-8');
    let account = web3.eth.accounts.privateKeyToAccount(pk);
    console.log("from address: ", account.address);
    web3.eth.accounts.wallet.add(account.privateKey);
    console.log("-----------------------------------------------");

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }
    // retrieve current nonce
    let nonceVal = await web3.eth.getTransactionCount(account.address);

    console.log("-----------------------------------------------");
    console.log("------------------deploy token-----------------");
    console.log("-----------------------------------------------");
    let tokenAddress;
    {
        // instantiate an instance of token contract
        let tokenContract = new web3.eth.Contract(tokenAbi);
        // deploy token contract
        let tokenDeploy = tokenContract.deploy({ data: tokenBytes, arguments: [1000000000000000] });

        let tokenTx = {
            from: account.address,
            data: tokenDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTokenTx = await web3.eth.accounts.signTransaction(tokenTx, account.privateKey);
        console.log('deploy token tx hash: ' + signedTokenTx.transactionHash);
        await web3.eth.sendSignedTransaction(signedTokenTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                console.log("token contract address: ", receipt.contractAddress);
                tokenAddress = receipt.contractAddress;
            });
    }

    // let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";

    let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
    for (let l = 0; l < 1; l++) {
        console.log("=====================================================================");
        console.log("===========================call tx loops: ", l, "===========================");

        let lable = "send 1000 txs, loop " + l
        console.time(lable);
        for (let m = 1; m <= 1000; m++) {
            try {
                let receiverFile = 'keys/' + m + '.txt';
                let receiverPK = fs.readFileSync(receiverFile, 'utf-8');
                let receiver = web3.eth.accounts.privateKeyToAccount(receiverPK);
                console.log("call with key: ", receiverFile, ", address: ", receiver.address);
                web3.eth.accounts.wallet.add(receiver.privateKey);
                {
                    let transfer = tokenContract.methods.transfer(receiver.address, 10000000000);

                    let transferTx = {
                        from: account.address,
                        to: tokenAddress,
                        data: transfer.encodeABI(),
                        gas: 4000000
                    }
                    let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, receiver.privateKey);
                    // console.log('transfer tx hash: ' + signedTransferTx.transactionHash);

                    // web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                    await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                        .on('receipt', receipt => {
                            console.log(receipt);
                        });
                }
                // await new Promise(r => setTimeout(r, 50));
            } catch (e) {
                console.log("send tx failed, index: " + m, "error: ", e);
                await new Promise(r => setTimeout(r, 1000));
            }
        }
        const dt = new Date();
        console.log("date time:", dt)
        console.timeEnd(lable);

        await new Promise(r => setTimeout(r, 1000));
    }

    console.log("transfer done! token address: ", tokenAddress)

}

f().then();
