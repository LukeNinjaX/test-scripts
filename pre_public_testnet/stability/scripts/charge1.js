const Web3 = require('@artela/web3');
const web3 = new Web3('http://47.88.28.193:8545');

async function f() {
    // receiver is the EOA address or contract address that receive native tokens
    const receiver = "0xe5B277852B77485056701eFc9B1B77b84E96eB9f";

    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount("0x30bfa696a21797185fcec4d0eada17bd5fd847344eb2043c4683085538c37c2f")
    web3.atl.accounts.wallet.add(bank.privateKey);

    // transfer account from bank to local account
    // the params of getTransactionCount is bank address.
    let bankNonce = await web3.atl.getTransactionCount(bank.address);
    let tx1 = {
        'from': bank,
        'to': receiver,
        'value': web3.utils.toWei('300', 'ether'), // transfer 1 eth
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
