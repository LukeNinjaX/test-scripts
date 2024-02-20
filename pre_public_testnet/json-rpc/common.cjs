const fs = require('fs');
const Web3 = require('@artela/web3');

const DefProjectConfig = "./project.config.json";
const DefPrivateKeyPath = "./privateKey.txt";

function connectToANode(
    nodeConfig = DefProjectConfig
) {
    let node = ""
    if (nodeConfig.startsWith("http")) {
        node = nodeConfig
    } else {
        const configJson = JSON.parse(fs.readFileSync(nodeConfig, "utf-8").toString());
        node = configJson.node
    }

    // init connection to Artela node
    if (!node) {
        throw new Error("'node' cannot be empty, please set by the parameter or artela.config.json");
    }
    return new Web3(node)
}

function login(
    web3,
    skFile = DefPrivateKeyPath,
) {
    const pk = fs.readFileSync(skFile, 'utf-8');
    const account = web3.eth.accounts.privateKeyToAccount(pk.trim());
    web3.eth.accounts.wallet.add(account.privateKey);
    return account
}

module.exports = {
    connectToANode,
    login
}
