const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

var http = require('http'),
    url = require('url');

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";
const pk = '0xfaf950a1d495d838b43d8281be3dd37950614577c00dde779d49e806e0f5c0a4'

var tokenAddr;
async function bind(n) {
    const fs = require('fs');
    const Web3 = require('@artela/web3');
    const web3 = new Web3('http://localhost:8545');
    const eventBytes = fs.readFileSync("./contract/event.bin", "utf-8")
    const eventAbidata = fs.readFileSync("./contract/event.abi", "utf-8")
    var eventAbi = JSON.parse(eventAbidata);
    const tokenBytes = fs.readFileSync("./contract/erc20.bin", "utf-8")
    const tokenAbidata = fs.readFileSync("./contract/erc20.abi", "utf-8")
    var tokenAbi = JSON.parse(tokenAbidata)
    let gasPrice = await web3.eth.getGasPrice();

    // load local account from private key
    // let privateFile = './keys/1.txt';
    // let pk = fs.readFileSync(privateFile, 'utf-8');
    // let pk = "0xfaf950a1d495d838b43d8281be3dd37950614577c00dde779d49e806e0f5c0a4"
    let sender = web3.eth.accounts.privateKeyToAccount(pk);
    console.log("from address: ", sender.address);
    web3.eth.accounts.wallet.add(sender.privateKey);
    console.log("-----------------------------------------------");

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }

    let pretokenAddress;
    {
        let nonceVal = await web3.eth.getTransactionCount(sender.address);
        let tokenContract = new web3.eth.Contract(tokenAbi);
        let tokenDeploy = tokenContract.deploy({ data: tokenBytes, arguments: [1000000000000000] });

        let tokenTx = {
            from: sender.address,
            data: tokenDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTokenTx = await web3.eth.accounts.signTransaction(tokenTx, sender.privateKey);
        console.log('deploy token tx hash: ' + signedTokenTx.transactionHash);
        await web3.eth.sendSignedTransaction(signedTokenTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                console.log("token contract address: ", receipt.contractAddress);
                pretokenAddress = receipt.contractAddress;
            });
    }

    let tokenAddress;
    {
        let nonceVal = await web3.eth.getTransactionCount(sender.address);
        let tokenContract = new web3.eth.Contract(tokenAbi);
        let tokenDeploy = tokenContract.deploy({ data: tokenBytes, arguments: [1000000000000000] });

        let tokenTx = {
            from: sender.address,
            data: tokenDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTokenTx = await web3.eth.accounts.signTransaction(tokenTx, sender.privateKey);
        console.log('deploy token tx hash: ' + signedTokenTx.transactionHash);
        await web3.eth.sendSignedTransaction(signedTokenTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                console.log("token contract address: ", receipt.contractAddress);
                tokenAddress = receipt.contractAddress;
            });
    }

    for (let i = 0; i < 1; i++) {
        console.log("");
        console.log("--------------------deloy aspect--------------------------, index: ", n * 2000 + i);
        let aspectID;
        {
            let aspectCode = fs.readFileSync('./aspect/release.wasm', {
                encoding: "hex"
            });
            let pretokenContract = new web3.eth.Contract(tokenAbi, pretokenAddress);
            let calldata = pretokenContract.methods.balanceOf(sender.address).encodeABI();
            // instantiate an instance of aspect
            let aspect = new web3.atl.Aspect();
            let deploy = await aspect.deploy({
                data: '0x' + aspectCode,
                joinPoints: ["PreContractCall", "PostContractCall"],
                properties: [
                    { 'key': 'from', 'value': sender.address },
                    { 'key': 'to', 'value': pretokenAddress },
                    { 'key': 'data', 'value': calldata }
                ],
                paymaster: sender.address,
                proof: '0x0',
            });

            let tx = {
                from: sender.address,
                data: deploy.encodeABI(),
                to: ARTELA_ADDR,
                gasPrice,
                gas: 9000000
            }

            const estimateGas = await web3.eth.estimateGas(tx);
            console.log("eth_estimatedGas(estimeateGasTransfer): ", estimateGas);
            tx.gas = estimateGas;

            let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
            console.log("sending signed transaction...");
            let ret = await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                });
            aspectID = ret.aspectAddress;
            console.log("ret: ", ret);
            console.log("== deploy aspectID ==", aspectID)
        }

        await new Promise(r => setTimeout(r, 1000));

        let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);

        console.log("");
        console.log("--------------------binding aspect to erc20 contract---------------------------");
        {
            // bind the smart contract with aspect
            let bind = await tokenContract.bind({
                priority: 1,
                aspectId: aspectID,
                to: tokenAddress,
                aspectVersion: 1,
            })

            let tx = {
                from: sender.address,
                data: bind.encodeABI(),
                gasPrice,
                to: ARTELA_ADDR,
                gas: 9000000
            }
            let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
            console.log("sending signed transaction...");
            await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                });
            console.log("== aspect bind success ==");
        }
    }

    // await new Promise(r => setTimeout(r, 1000));
    console.log("token contract address: ", tokenAddress);
    tokenAddr = tokenAddress
}

async function call() {
    const tokenBytes = fs.readFileSync("contract/ArtToken.bin", "utf-8")
    const tokenAbidata = fs.readFileSync("contract/ArtToken.abi", "utf-8")
    var tokenAbi = JSON.parse(tokenAbidata)

    let gasPrice = await web3.eth.getGasPrice();

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }

    // let tokenAddress = "0x62bd8C0F7Cb4084B0de8528007f5bbb5a9F6875a";
    let tokenAddress = tokenAddr;
    let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);
    let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";
    for (let l = 0; l < 1; l++) {
        let lable = "send 5000 txs, loop " + l
        console.time(lable);
        for (let m = 1; m <= 1; m++) {
            try {
                let caller = web3.eth.accounts.privateKeyToAccount(pk);
                // console.log("call with key: ", callerFile, ", address: ", caller.address);
                web3.eth.accounts.wallet.add(caller.privateKey);
                {
                    let transfer = tokenContract.methods.transfer(receiverAddress, 0);

                    let transferTx = {
                        from: caller.address,
                        to: tokenAddress,
                        data: transfer.encodeABI(),
                        gas: await transfer.estimateGas()
                    }
                    let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);
                    console.log('tx hash: ' + signedTransferTx.transactionHash);
                    await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
                         .on('receipt', receipt => {
                             console.log(receipt);
                         });
                }
            } catch (e) {
                console.log("send tx failed, index: " + m, "error: ", e);
                await new Promise(r => setTimeout(r, 1000));
            }
        }

        const dt = new Date().toISOString();
        console.log("date time:", dt)
        console.timeEnd(lable);
    }

}

async function test() {
    await bind();
    await new Promise(r => setTimeout(r, 1000));
    await call();
}

test().then();
