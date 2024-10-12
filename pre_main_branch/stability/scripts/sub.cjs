const Web3 = require('@artela/web3');
const { workingDir } = require('./common');
const fs = require('fs');
const path = require('path');

const tokenBytes = fs.readFileSync(path.join(workingDir, "./contract/erc20.bin"), "utf-8")
const tokenAbidata = fs.readFileSync(path.join(workingDir, "./contract/erc20.abi"), "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

const eventBytes = fs.readFileSync(path.join(workingDir, "./contract/event.bin"), "utf-8")
const eventAbidata = fs.readFileSync(path.join(workingDir, "./contract/event.abi"), "utf-8")
var eventAbi = JSON.parse(eventAbidata);

// 连接到以太坊节点的WebSocket端口
// const web3 = new Web3(new Web3.providers.WebsocketProvider('ws://47.251.32.165:8546'));

const web3 = new Web3(new Web3.providers.WebsocketProvider('wss://test-node.artela.network/ws'));

async function subNewBlockHeaders() {
    for (let i = 0; i < 1; i++) {
        const subscription = web3.eth.subscribe('newBlockHeaders', (error, blockHeader) => {
            if (!error) {
                console.log('New Block Received:', blockHeader);
            } else {
                console.error('Error:', error);
                throw error;
            }
        });

        await new Promise(r => setTimeout(r, 500000));

        // 取消订阅
        subscription.unsubscribe((error, success) => {
            if (success) {
                console.log('Successfully unsubscribed newBlockHeaders!');
            } else {
                console.error('Unsubscribe newBlockHeaders error:', error);
                throw error;
            }
        });
    }
}

async function subPendingTransactions() {
    for (let i = 0; i < 5; i++) {
        const subscription = web3.eth.subscribe('pendingTransactions', (error, transactionHash) => {
            if (!error) {
                console.log('Pending Transaction:', transactionHash);
            } else {
                console.error('Error:', error);
            }
        });

        await new Promise(r => setTimeout(r, 5000));

        // 取消订阅
        subscription.unsubscribe((error, success) => {
            if (success) {
                console.log('Successfully unsubscribed pendingTransactions!');
            } else {
                console.error('Unsubscribe pendingTransactions error:', error);
                throw error;
            }
        });
    }
}

async function subLogs() {
    for (let i = 0; i < 100; i++) {
        const subscription = web3.eth.subscribe('logs', {
            address: '0x5dF1FF5476aC8D78DcEb69Ba875f8Af215395344'
        }, (error, log) => {
            if (!error) {
                console.log('Log received:', log);
            } else {
                console.error('Error:', error);
            }
        });

        await new Promise(r => setTimeout(r, 5000));

        // 取消订阅
        subscription.unsubscribe((error, success) => {
            if (success) {
                console.log('Successfully unsubscribed logs!');
            } else {
                console.error('Unsubscribe logs error:', error);
                throw error;
            }
        });
    }
}

async function subContractEvents() {
    const contractAddress = '0x5dF1FF5476aC8D78DcEb69Ba875f8Af215395344';
    const abi = eventAbi;  // 替换为你的合约 ABI
    const contract = new web3.eth.Contract(abi, contractAddress);

    for (let i = 0; i < 100; i++) {
        const subscription = contract.events.Log({
            filter: { /* 可选: 过滤器选项 */ },
            fromBlock: 'latest'
        }, (error, event) => {
            if (!error) {
                console.log('Event received:', event);
            } else {
                console.error('Error:', error);
            }
        });

        await new Promise(r => setTimeout(r, 5000));

        // 取消订阅
        subscription.unsubscribe((error, success) => {
            if (success) {
                console.log('Successfully unsubscribed from ContractEvents!');
            } else {
                console.error('Unsubscribe ContractEvents error:', error);
                throw error;
            }
        });
    }
}

async function subSyncing() {
    for (let i = 0; i < 100; i++) {
        const subscription = web3.eth.subscribe('syncing', (error, syncStatus) => {
            if (!error) {
                if (syncStatus) {
                    console.log('Node is syncing:', syncStatus);
                } else {
                    console.log('Node is synced and not syncing.');
                }
            } else {
                console.error('Error:', error);
            }
        });

        await new Promise(r => setTimeout(r, 5000));

        // 取消订阅
        // subscription.unsubscribe((error, success) => {
        //     if (success) {
        //         console.log('Successfully unsubscribed from syncing!');
        //     } else {
        //         console.error('Unsubscribe syncing error:', error);
        //         throw error;
        //     }
        // });
    }
}

// for (let i = 0; i < 100; i++) {
//     console.log("calling subscribe", i);
//     subNewBlockHeaders();
// }

// for (let i = 0; i < 100; i++) {
//     console.log("calling subscribe", i);
//     subLogs();
// }

// for (let i = 0; i < 100; i++) {
//     console.log("calling subscribe", i);
//     subContractEvents();
// }
subNewBlockHeaders();
// subPendingTransactions();
// subLogs();
// subContractEvents();
// subSyncing();


web3.currentProvider.on('end', (error) => {
    console.log('WebSocket connection closed:', error);
    // 这里可以添加重连逻辑
});
