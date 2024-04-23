const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const tokenBytes = fs.readFileSync("contract/ArtToken.bin", "utf-8")
const tokenAbidata = fs.readFileSync("contract/ArtToken.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

// let tokenAddress = "0xE83d648cEd4AF92f3Fb2d09E488ADa3b33F8F292"; // erc20
let tokenAddress = "0x4C8bbCd5045c7F22427d97350e2063fE076Cf2c0"; // erc20 + aspect
let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";

async function f() {

    let callerFile = 'keys/1.txt';
    let callerPK = fs.readFileSync(callerFile, 'utf-8');
    let caller = web3.eth.accounts.privateKeyToAccount(callerPK);
    web3.eth.accounts.wallet.add(caller.privateKey);

    {
        let transfer = tokenContract.methods.transfer(receiverAddress, 100);

        let transferTx = {
            from: caller.address,
            to: tokenAddress,
            data: transfer.encodeABI(),
            gas: 4000000
        }
        let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);

        // const dt = new Date().toISOString();
        // let lable = "sent index " + m + ", date: " + dt + ", hash: " + signedTransferTx.transactionHash;
        // console.time(lable);
        // web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
        // console.timeEnd(lable);
        await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
            });
    }

    for (let i = 0; i < 1000; i++) {
        let lable = "send 100 queries, index " + i
        console.time(lable);
        for (let j = 0; j < 100; j++) {
            // await new Promise(r => setTimeout(r, 15));
            call(i);
        }
        console.timeEnd(lable);
    }
}

async function call(i) {
    let result = await tokenContract.methods.balanceOf(receiverAddress).call();
    console.log("balance of " + receiverAddress + ":", result, "index: ", i);
}

f().then();
