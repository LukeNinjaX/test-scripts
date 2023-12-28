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

    // load local account from private key
    let privateFile = 'keys/1.txt';
    let pk = fs.readFileSync(privateFile, 'utf-8');
    let sender = web3.eth.accounts.privateKeyToAccount(pk);
    console.log("from address: ", sender.address);
    web3.eth.accounts.wallet.add(sender.privateKey);
    console.log("-----------------------------------------------");

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }
    // retrieve current nonce
    let nonceVal = await web3.eth.getTransactionCount(sender.address);

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
        console.log("--------------------deloy aspect--------------------------");
        let aspectID;
        {
            let aspectCode = fs.readFileSync('./aspect/release-4.wasm', {
                encoding: "hex"
            });
            // instantiate an instance of aspect
            let aspect = new web3.atl.Aspect();
            let deploy = await aspect.deploy({
                data: '0x' + aspectCode,
                properties: [
                    { 'key': 'owner', 'value': sender.address },
                    { 'key': 'binding', 'value': tokenAddress },
                    // { 'key': 'joinpoints', 'value': 'preContractCall' }
                    { 'key': 'joinpoints', 'value': 'preContractCall,postTxExecute,preTxExecute,postContractCall' }
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
        console.log("--------------------binding aspect to storage contract---------------------------");
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


    // let receiverAddress = "0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4";
    // for (let l = 0; l < 1000000; l++) {
    //     console.log("=====================================================================");
    //     console.log("===========================call tx loops: ", l, "===========================");

    //     let lable = "send 10000 txs, loop " + l
    //     console.time(lable);
    //     for (let m = 1; m <= 10000; m++) {
    //         try {
    //             let callerFile = 'keys/' + m + '.txt';
    //             let callerPK = fs.readFileSync(callerFile, 'utf-8');
    //             let caller = web3.eth.accounts.privateKeyToAccount(callerPK);
    //             // console.log("call with key: ", callerFile, ", address: ", caller.address);
    //             web3.eth.accounts.wallet.add(caller.privateKey);
    //             {
    //                 let transfer = tokenContract.methods.transfer(receiverAddress, 0);

    //                 let transferTx = {
    //                     from: caller.address,
    //                     to: tokenAddress,
    //                     data: transfer.encodeABI(),
    //                     gas: 4000000
    //                 }
    //                 let signedTransferTx = await web3.eth.accounts.signTransaction(transferTx, caller.privateKey);
    //                 // console.log('transfer tx hash: ' + signedTransferTx.transactionHash);

    //                 web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
    //                 // await web3.eth.sendSignedTransaction(signedTransferTx.rawTransaction)
    //                 //     .on('receipt', receipt => {
    //                 //         console.log(receipt);
    //                 //     });
    //             }
    //             // await new Promise(r => setTimeout(r, 50));
    //         } catch (e) {
    //             console.log("send tx failed, index: " + m, "error: ", e);
    //             await new Promise(r => setTimeout(r, 1000));
    //         }
    //     }

    //     // {
    //     //     var opts = url.parse('http://127.0.0.1:26657/num_unconfirmed_txs\?'),
    //     //         data = { title: 'Test' };
    //     //     opts.headers = {};
    //     //     opts.headers['Content-Type'] = 'application/json';

    //     //     let clear = false;
    //     //     for (; ;) {
    //     //         if (clear) {
    //     //             break;
    //     //         }
    //     //         http.request(opts, function (res) {
    //     //             res.on('data', function (chunk) {
    //     //                 console.log('BODY: ' + chunk);
    //     //                 if (chunk.includes('"n_txs":"0"')) {
    //     //                     clear = true;
    //     //                 }
    //     //             });
    //     //             res.pipe(process.stdout);
    //     //         }).end(JSON.stringify(data));
    //     //         await new Promise(r => setTimeout(r, 300));
    //     //     }
    //     // }

    //     const dt = new Date();
    //     console.log("date time:", dt)
    //     console.timeEnd(lable);

    //     // await new Promise(r => setTimeout(r, 1000));
    // }

}

f().then();