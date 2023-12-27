const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');


var http = require('http'),
    url = require('url');

async function f() {
    let start = 0x9bbe;
    let end = start + 1000;
    for (let h = start; h < end; h++) {
        let count = await web3.eth.getBlockTransactionCount(h);
        console.log("height", h, "tx count:", count);
    }

    // await new Promise(r => setTimeout(r, 1000));
}


f().then();
