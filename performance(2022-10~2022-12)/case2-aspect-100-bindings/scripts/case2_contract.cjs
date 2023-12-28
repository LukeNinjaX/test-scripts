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
    console.log("--------------------deloy target contract---------------------------");
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

    for (let i = 0; i < 1000; i++) {
        console.log("");
        console.log("--------------------deloy storage contract---------------------------", i);
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
    }
}

f().then();
