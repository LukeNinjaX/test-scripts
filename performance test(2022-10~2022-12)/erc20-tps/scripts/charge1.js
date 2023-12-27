const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

async function f() {
    // receiver is the EOA address or contract address that receive native tokens
    const receiver = "0x975FC0A1F5083EC7658D7E0D3A8B2629CE0897D3";

    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount("0x3b7cb70ce27085f07d7696077cca23ee6fc062eee51c6747ace65b3eeeccf74b")
    web3.atl.accounts.wallet.add(bank.privateKey);

    // transfer account from bank to local account
    // the params of getTransactionCount is bank address.
    let bankNonce = await web3.atl.getTransactionCount(bank.address);
    let tx1 = {
        'from': bank,
        'to': receiver,
        'value': web3.utils.toWei('1000', 'ether'), // transfer 1 eth
        'gas': 2000000,
        'gaslimit': 4000000,
        'nonce': bankNonce
    };

    // send transaction
    await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });
}

f().then();