const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const tokenBytes = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/erc20/contract/ArtToken.bin", "utf-8")
const tokenAbidata = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/erc20/contract/ArtToken.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

async function f() {
    // load local account from private key
    let privateFile = '/home/luke/go/src/github.com/artela-network/auto/erc20-tps/keys/1.txt';
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

    let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";

    for (let i = 1; i < 10000000; i++) {
        try {
            console.log("-----------------------------------------------");
            console.log("-------------------transfer--------------------", "tx index: ", i);
            console.log("-----------------------------------------------");
            {
                const dt = new Date();
                console.log("current time: ", dt);
            }
            let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
            let transfer = tokenContract.methods.transfer(receiverAddress, 10000000);

            let transferTx = {
                from: account.address,
                to: tokenAddress,
                data: transfer.encodeABI(),
                maxPriorityFeePerGas: 10000,
                maxFeePerGas: 100001,
                gas: 4000000
            }
            let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, account.privateKey);
            console.log('transfer tx hash: ' + signedTransferTx.transactionHash);

            await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                });

            let result = await tokenContract.methods.balanceOf(receiverAddress).call()
            console.log("receiver address: ", receiverAddress);
            console.log("receiver balance: " + result);
        } catch (e) {
            console.log("error: ", e);
            await new Promise(r => setTimeout(r, 5000));
        }
    }

}

f().then();
