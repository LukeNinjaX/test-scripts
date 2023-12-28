const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

async function f() {
    // receiver is the EOA address or contract address that receive native tokens
    const receiver = "0x21b30AdBC8d74a87F822b36f2E88591F59D1F387";

    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount("0xe1d2848607972a1c7b87a389b532b8b12919672c794302427fa7253217a7899d")
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