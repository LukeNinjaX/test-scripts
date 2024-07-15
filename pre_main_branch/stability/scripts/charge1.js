const { web3 } = require('./common');

async function f() {
    // receiver is the EOA address or contract address that receive native tokens
    const receiver = "0x37A05Aa3895B54D01fa7967e850fE482D2f289E6";

    // load bank account, the private key of bank is the genesis account key got from last step.
    const bank = web3.atl.accounts.privateKeyToAccount("0x19277fe1eed6e65044c0ddd49de78192b622359a8f07595cb25576d6e103b9c2")
    web3.atl.accounts.wallet.add(bank.privateKey);

    // transfer account from bank to local account
    // the params of getTransactionCount is bank address.
    let bankNonce = await web3.atl.getTransactionCount(bank.address);
    let tx1 = {
        'from': bank,
        'to': receiver,
        'value': web3.utils.toWei('10000000', 'ether'), // transfer 1 eth
        'gas': 2000000,
        'nonce': bankNonce
    };

    // send transaction
    await web3.atl.sendTransaction(tx1).on('receipt', receipt => {
        console.log('transferred from bank to local account');
        console.log(receipt);
    });
}

f().then();
