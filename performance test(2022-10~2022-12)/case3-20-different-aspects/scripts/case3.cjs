"use strict"

//todo modify it

const Web3 = require('@artela/web3');
const fs = require("fs");

const scheduleTargetBin = fs.readFileSync('./contract/ScheduleTarget.bin', "utf-8");
const ScheduleTarget = fs.readFileSync('./contract/ScheduleTarget.abi', "utf-8")
const ScheduleTargetAbi = JSON.parse(ScheduleTarget);
const ScheduleTargetOptions = {
    data: scheduleTargetBin
};

const storageContractBin = fs.readFileSync('./contract/Storage.bin', "utf-8");
const storage = fs.readFileSync('./contract/Storage.abi', "utf-8")
const StorageContractAbi = JSON.parse(storage);

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

const storageContractOptions = {
    data: storageContractBin,
};

var http = require('http'),
    url = require('url');

async function f() {
    // init connection to Artela node
    const web3 = new Web3('http://127.0.0.1:8545');
    let gasPrice = await web3.eth.getGasPrice();
    // retrieve accounts

    // load local account from private key
    let privateFile = './keys/1.txt';
    let pk = fs.readFileSync(privateFile, 'utf-8');
    let sender = web3.eth.accounts.privateKeyToAccount(pk);
    console.log("from address: ", sender.address);
    web3.eth.accounts.wallet.add(sender.privateKey);


    console.log("");
    console.log("--------------------deloy contract---------------------------");
    let schedulerAddress;
    {
        let contract = new web3.eth.Contract(ScheduleTargetAbi);
        let deploy = contract.deploy({ data: ScheduleTargetOptions.data });
        let tx = {
            from: sender.address,
            data: deploy.encodeABI(),
            gasPrice,
            gas: 4000000
        }
        let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
        console.log("sending signed transaction...");
        await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                schedulerAddress = receipt.contractAddress
            });
        console.log("== schedule contract address ==", schedulerAddress)
    }

    console.log("");
    console.log("--------------------deloy storage contract---------------------------");
    let storageAddress;
    {
        let contract = new web3.eth.Contract(StorageContractAbi);
        let deploy = contract.deploy({ data: storageContractOptions.data });
        let tx = {
            from: sender.address,
            data: deploy.encodeABI(),
            gasPrice,
            gas: 4000000
        }
        let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
        console.log("sending signed transaction...");
        await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                storageAddress = receipt.contractAddress
            });
        console.log("== storage contract address ==", storageAddress)
    }

    for (let cnt = 1; cnt <= 20; cnt++) {
        console.log("");
        console.log("--------------------deloy aspect--------------------------");
        let aspectID;
        {
            let wasmFile = "./aspect/release" + cnt + ".wasm";
            let aspectCode = fs.readFileSync(wasmFile, {
                encoding: "hex"
            });
            // instantiate an instance of aspect
            let aspect = new web3.atl.Aspect();
            let deploy = await aspect.deploy({
                data: '0x' + aspectCode,
                properties: [
                    { 'key': 'ScheduleTo', 'value': schedulerAddress },
                    { 'key': 'Broker', 'value': sender.address },
                    { 'key': 'binding', 'value': storageAddress },
                    { 'key': 'owner', 'value': sender.address }
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

        console.log("");
        console.log("--------------------binding aspect to storage contract---------------------------");
        let storageInstance = new web3.eth.Contract(StorageContractAbi, storageAddress);
        {
            // bind the smart contract with aspect
            let bind = await storageInstance.bind({
                priority: 1,
                aspectId: aspectID,
                to: storageAddress,
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

    await new Promise(r => setTimeout(r, 1000));

    let storageInstance = new web3.eth.Contract(StorageContractAbi, storageAddress);
    for (let l = 0; l < 1000000; l++) {
        console.log("=====================================================================");
        console.log("===========================call tx loops: ", l, "===========================");

        let lable = "send 1000 txs, loop " + l
        console.time(lable);
        for (let m = 1; m <= 1000; m++) {
            try {
                let callerFile = 'keys/' + m + '.txt';
                let callerPK = fs.readFileSync(callerFile, 'utf-8');
                let caller = web3.eth.accounts.privateKeyToAccount(callerPK);
                console.log("call with key: ", callerFile, ", address: ", caller.address);
                web3.eth.accounts.wallet.add(caller.privateKey);
                {
                    // call the smart contract, aspect should be triggered
                    let store = storageInstance.methods.store(1);

                    let tx = {
                        // from: caller.address,
                        to: storageAddress,
                        data: store.encodeABI(),
                        gasPrice,
                        gas: 4000000
                    }
                    let signedTx = await web3.eth.accounts.signTransaction(tx, caller.privateKey);
                    // console.log("signedTx: ", signedTx);
                    // console.log('call contract tx hash: ' + signedTx.transactionHash);

                    web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                    // await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                    //     .on('receipt', receipt => {
                    //         console.log(receipt);
                    //     });
                }
                await new Promise(r => setTimeout(r, 50));
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

        const dt = new Date();
        console.log("date time:", dt)
        console.timeEnd(lable);

        await new Promise(r => setTimeout(r, 1000));
    }
}

f().then();
