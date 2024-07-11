const path = require('path');
const Web3 = require('@artela/web3');
const fs = require("fs");

const workingDir = "/home/luke/go/src/github.com/artela-network/test-scripts/pre_main_branch/stability/";
const configJson = JSON.parse(fs.readFileSync(path.join(workingDir, 'project.config.json'), "utf-8").toString());
const web3 = new Web3(configJson.node);

const sentTransactionHashes = new Set();
const failureTransactionHashes = new Set();
let fetchStarted = false;

function fetchAdd(hash) {
    if (!fetchStarted) {
        fetchBlocks();
        fetchStarted = true;
    }
    sentTransactionHashes.add(hash);
}

function fetchRemove(hash) {
    if (sentTransactionHashes.has(hash)) {
        sentTransactionHashes.delete(hash);
    }
}

const duration = 500;
async function fetchBlocks() {
    try {
        let current = await web3.eth.getBlockNumber();

        while (true) {
            let latest = await web3.eth.getBlockNumber();
            if (latest == current) {
                await new Promise(r => setTimeout(r, duration));
                continue;
            }

            const block = await web3.eth.getBlock(current);
            console.log(`Block Number: ${block.number}, txs: ${block.transactions.length}`);
            for (const tx of block.transactions) {
                const receipt = await web3.eth.getTransactionReceipt(tx);
                if (receipt && receipt.status) {
                    fetchRemove(tx);
                } else {
                    failureTransactionHashes.add(tx);
                }
            }

            current++;
        }
    } catch (error) {
        console.error('Error fetching blocks:', error);
    }
}

async function fetchCheck() {
    while (true) {
        const sendlen = sentTransactionHashes.size;
        const faillen = failureTransactionHashes.size;
        if (sendlen > faillen) {
            console.log(`waitting tx to finish: ${sendlen - faillen}`);
            await new Promise(r => setTimeout(r, 300));
        } else {
            if (faillen == 0) {
                console.log(`waitting tx to finish: 0`);
                console.log("all tx found.");
                sentTransactionHashes.clear();
                failureTransactionHashes.clear();
                break;
            } else {
                console.log("some transaction failed", failureTransactionHashes);
                process.exit();
            }
        }
    }
}

module.exports = {
    fetchAdd,
    fetchCheck,

    web3,
    workingDir,
};