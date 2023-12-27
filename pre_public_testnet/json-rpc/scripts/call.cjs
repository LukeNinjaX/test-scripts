const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const assert = require('node:assert/strict');

const eventBytes = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/pre_public_testnet/json-rpc/contract/event.bin", "utf-8")
const eventAbidata = fs.readFileSync("/home/luke/go/src/github.com/artela-network/auto/pre_public_testnet/json-rpc/contract/event.abi", "utf-8")
var eventAbi = JSON.parse(eventAbidata);

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

// load bank account, the private key of bank is the genesis account key got from last step.
const bankSK = '0xe1d2848607972a1c7b87a389b532b8b12919672c794302427fa7253217a7899d';
const bank = web3.atl.accounts.privateKeyToAccount(bankSK)
web3.atl.accounts.wallet.add(bank.privateKey);

let contractAddress;
let callEventBlockNumber;
let callEventTopics;
let callEventTxHash;
async function deploy() {
    // retrieve current nonce
    let nonceVal = await web3.eth.getTransactionCount(bank.address);
    {
        // instantiate an instance of event contract
        let eventContract = new web3.eth.Contract(eventAbi);
        // deploy event contract
        let eventDeploy = eventContract.deploy({ data: eventBytes });

        let eventTx = {
            from: bank.address,
            data: eventDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTx = await web3.eth.accounts.signTransaction(eventTx, bank.privateKey);
        console.log("eth_signTransaction: ", signedTx)
        await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
            .on('receipt', receipt => {
                console.log("eth_sendSignedTransaction: ", receipt);
                console.log("contract address: ", receipt.contractAddress);
                contractAddress = receipt.contractAddress;
                eventBlockNumber = receipt.blockNumber;
            });
    }
}

async function call() {
    let eventContract = new web3.eth.Contract(eventAbi, contractAddress);
    let method = eventContract.methods.sendEvent();

    let tx = {
        from: bank.address,
        to: contractAddress,
        data: method.encodeABI(),
        gas: 4000000
    }
    let signedTx = await web3.eth.accounts.signTransaction(tx, bank.privateKey);
    await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
        .on('receipt', receipt => {
            console.log("call event: ", receipt);
            callEventBlockNumber = receipt.blockNumber;
            callEventTopics = receipt.logs[0].topics;
            callEventTxHash = receipt.transactionHash;
        });
}

async function getLogs() {
    console.log("callEventBlockNumber", callEventBlockNumber);
    const filter = {
        fromBlock: callEventBlockNumber - 1,
        toBlock: callEventBlockNumber,
        address: contractAddress,
        topics: callEventTopics
    };
    const logs = await web3.eth.getPastLogs(filter);
    console.log("eth_getLogs: ", logs);
    assert.deepEqual(logs.length, 2);
}

async function f() {
    let netVersion = await web3.eth.net.getId();
    console.log("net_version: ", netVersion)

    let chanID = await web3.eth.getChainId();
    console.log("chain_id: ", chanID);
    assert.deepEqual(netVersion, chanID);

    const gasPrice = await web3.eth.getGasPrice();
    console.log("eth_gasPrice:", gasPrice);
    assert.deepEqual(gasPrice > 0, true)

    const accounts = await web3.eth.getAccounts();
    console.log("eth_accounts:", accounts);
    assert.deepEqual(accounts.length >= 0, true);

    let blockNumber = await web3.eth.getBlockNumber();
    console.log("eth_blockNumber: ", blockNumber);
    assert.deepEqual(blockNumber > 0, true);

    const balance = await web3.eth.getBalance(bank.address);
    console.log("eth_getBalance:", balance);
    assert.deepEqual(balance > 0, true);

    const transactionCount = await web3.eth.getTransactionCount(bank.address);
    console.log("eth_getTransactionCount:", transactionCount);
    assert.deepEqual(transactionCount >= 0, true);

    // Get block information by a specific block number
    const blockByNumber = await web3.eth.getBlock(blockNumber, true);
    console.log("eth_getBlockByNumber:", blockByNumber);
    assert.deepEqual(blockByNumber.number, blockNumber);

    // Get block information by a specific block hash
    const blockByHash = await web3.eth.getBlock(blockByNumber.hash, true);
    console.log("eth_getBlockByHash:", blockByHash);
    assert.deepEqual(blockByHash.number, blockByNumber.number);

    await deploy();


    const storageValue = await web3.eth.getStorageAt(contractAddress, 0);
    console.log("eth_getStorageAt:", storageValue);
    assert.deepEqual(storageValue.length, 66);

    // Get contract code for a specific address
    const contractCode = await web3.eth.getCode(contractAddress);
    console.log("eth_getCode:", contractCode);
    assert.deepEqual(contractCode.length, 1348);

    // Get logs from a block
    await call();
    await getLogs();

    // Get transaction information by a specific transaction hash
    const transactionByHash = await web3.eth.getTransaction(callEventTxHash);
    console.log("eth_getTransactionByHash:", transactionByHash);
    assert.deepEqual(transactionByHash.hash, callEventTxHash);

    // Get transaction receipt by a specific transaction hash
    const transactionReceipt = await web3.eth.getTransactionReceipt(callEventTxHash);
    console.log("eth_getTransactionReceipt:", transactionReceipt);
    assert.deepEqual(transactionReceipt.transactionHash, callEventTxHash);

    console.log(`
        ┌─┐       ┌─┐
     ┌──┘ ┴───────┘ ┴──┐
     │                 │
     │       ───       │
     │  ─┬┘       └┬─  │
     │                 │
     │       ─┴─       │
     │                 │
     └───┐         ┌───┘
         │         │
         │         │
         │         │
         │         └──────────────┐
         │                        │
         │    Congratulations!    ├─┐
         │ All tests have passed! ┌─┘
         │                        │
         └─┐  ┐  ┌───────┬──┐  ┌──┘
           │ ─┤ ─┤       │ ─┤ ─┤
           └──┴──┘       └──┴──┘
`);
}

f().then();
