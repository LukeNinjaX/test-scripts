const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const binary = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/contract/calculator/calculator.bin", "utf-8")
const abiData = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/contract/calculator/calculator.abi", "utf-8")
var abi = JSON.parse(abiData)

const callBinary = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/contract/calculator/caller.bin", "utf-8")
const callAbiData = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/contract/calculator/caller.abi", "utf-8")
var callAbi = JSON.parse(callAbiData)

async function f() {
    // load local account from private key
    let privateFile = '/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/keys/1.txt';
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
    console.log("------------------deploy contract-----------------");
    console.log("-----------------------------------------------");
    let contractAddress;
    let calculatorAddress;
    {
        {
            // instantiate an instance of contract contract
            let contract = new web3.eth.Contract(abi);
            // deploy contract
            let deploy = contract.deploy({ data: binary });

            let tx = {
                from: account.address,
                data: deploy.encodeABI(),
                nonce: nonceVal,
                // type: ?
                gas: 4000000
            }
            let signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
            console.log('deploy tx hash: ' + signedTx.transactionHash);
            await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                    console.log("calculator contract address: ", receipt.contractAddress);
                    calculatorAddress = receipt.contractAddress;
                });
        }

        {
            // instantiate an instance of contract contract
            let contract = new web3.eth.Contract(callAbi);
            // deploy contract
            let deploy = contract.deploy({ data: callBinary, arguments: [calculatorAddress] });

            let tx = {
                from: account.address,
                data: deploy.encodeABI(),
                nonce: nonceVal + 1,
                // type: ?
                gas: 4000000
            }
            let signedTx = await web3.eth.accounts.signTransaction(tx, account.privateKey);
            console.log('deploy tx hash: ' + signedTx.transactionHash);
            await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                    console.log("calculator contract address: ", receipt.contractAddress);
                    contractAddress = receipt.contractAddress;
                });
        }
    }

    let contract = new web3.eth.Contract(callAbi, contractAddress);
    for (let l = 0; l < 1; l++) {
        console.log("=====================================================================");
        console.log("===========================call tx loops: ", l, "===========================");

        let lable = "send 1 txs, loop " + l
        console.time(lable);
        // for (let m = 1; m <= 1; m++) {
        //     try {
        //         let receiverFile = '/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/keys/' + m + '.txt';
        //         let receiverPK = fs.readFileSync(receiverFile, 'utf-8');
        //         let receiver = web3.eth.accounts.privateKeyToAccount(receiverPK);
        //         console.log("call without accesslist, with key: ", receiverFile, ", address: ", receiver.address);
        //         web3.eth.accounts.wallet.add(receiver.privateKey);
        //         {
        //             let call = contract.methods.callCalculator();

        //             let callTx = {
        //                 from: account.address,
        //                 to: contractAddress,
        //                 data: call.encodeABI(),
        //                 gas: 4000000
        //             }
        //             let signedCallTx = await web3.eth.accounts.signTransaction(callTx, account.privateKey);
        //             // console.log('tx hash: ' + signedCallTx.transactionHash);

        //             // web3.eth.sendSignedTransaction(signedCallTx.rawTransaction)
        //             await web3.eth.sendSignedTransaction(signedCallTx.rawTransaction)
        //                 .on('receipt', receipt => {
        //                     console.log(receipt);
        //                 });
        //         }
        //         // await new Promise(r => setTimeout(r, 50));
        //     } catch (e) {
        //         console.log("send tx failed, index: " + m, "error: ", e);
        //         await new Promise(r => setTimeout(r, 1000));
        //     }
        // }

        for (let m = 1; m <= 1; m++) {
            try {
                let receiverFile = '/home/luke/go/src/github.com/artela-network/auto/case4-all-kinds-of-contracts/keys/' + m + '.txt';
                let receiverPK = fs.readFileSync(receiverFile, 'utf-8');
                let receiver = web3.eth.accounts.privateKeyToAccount(receiverPK);
                console.log("call with accesslist, with key: ", receiverFile, ", address: ", receiver.address);
                web3.eth.accounts.wallet.add(receiver.privateKey);
                {
                    let call = contract.methods.callCalculator();

                    let callTx = {
                        from: account.address,
                        to: contractAddress,
                        data: call.encodeABI(),
                        gas: 4000000,
                        accessList: [
                            {
                                address: calculatorAddress,
                                storageKeys: [
                                    "0x0000000000000000000000000000000000000000000000000000000000000000",
                                    "0x0000000000000000000000000000000000000000000000000000000000000001",
                                ],
                            },
                        ],
                    }
                    let signedCallTx = await web3.eth.accounts.signTransaction(callTx, account.privateKey);
                    // console.log('tx hash: ' + signedCallTx.transactionHash);

                    // web3.eth.sendSignedTransaction(signedCallTx.rawTransaction)
                    await web3.eth.sendSignedTransaction(signedCallTx.rawTransaction)
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

    console.log("transfer done! contract address: ", contractAddress)

}

f().then();
