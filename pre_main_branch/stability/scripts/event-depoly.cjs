const fs = require('fs');
const { web3, workingDir } = require('./common');
const path = require('path');

const tokenBytes = fs.readFileSync(path.join(workingDir, "contract/event.bin"), "utf-8");
const tokenAbidata = fs.readFileSync(path.join(workingDir, "contract/event.abi"), "utf-8");
var tokenAbi = JSON.parse(tokenAbidata);

async function f() {
    // load local account from private key
    // let privateFile = 'keys/1.txt';
    // let pk = fs.readFileSync(privateFile, 'utf-8');
    let pk = "0xe9b1d63e8acd7fe676acb43afb390d4b0202dab61abec9cf2a561e4becb147de";
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

    let tokenAddress;
    {
        // instantiate an instance of token contract
        let tokenContract = new web3.eth.Contract(tokenAbi);
        // deploy token contract
        let tokenDeploy = tokenContract.deploy({ data: tokenBytes });

        let tokenTx = {
            from: account.address,
            data: tokenDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTokenTx = await web3.eth.accounts.signTransaction(tokenTx, account.privateKey);
        console.log('deploy contract tx hash: ' + signedTokenTx.transactionHash);
        await web3.eth.sendSignedTransaction(signedTokenTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                console.log("contract address: ", receipt.contractAddress);
                tokenAddress = receipt.contractAddress;
            });
    }
}

f().then();