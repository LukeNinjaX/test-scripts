const fs = require('fs');
const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');

const tokenBytes = fs.readFileSync("./contract/erc20.bin", "utf-8")
const tokenAbidata = fs.readFileSync("./contract/erc20.abi", "utf-8")
var tokenAbi = JSON.parse(tokenAbidata)

const ARTELA_ADDR = "0x0000000000000000000000000000000000A27E14";

async function f() {
    let gasPrice = await web3.eth.getGasPrice();

    // load local account from private key
    let privateFile = './keys/1.txt';
    let pk = fs.readFileSync(privateFile, 'utf-8');
    let sender = web3.eth.accounts.privateKeyToAccount(pk);
    console.log("from address: ", sender.address);
    web3.eth.accounts.wallet.add(sender.privateKey);
    console.log("-----------------------------------------------");

    {
        const dt = new Date();
        console.log("current time: ", dt);
    }
    // retrieve current nonce
    let nonceVal = await web3.eth.getTransactionCount(sender.address);

    console.log("-----------------------------------------------");
    console.log("------------------deploy token-----------------");
    console.log("-----------------------------------------------");
    let tokenAddress;
    {
        // instantiate an instance of token contract
        let tokenContract = new web3.eth.Contract(tokenAbi);
        // deploy token contract
        let tokenDeploy = tokenContract.deploy({ data: tokenBytes, arguments: [1000000000000000] });

        let tokenTx = {
            from: sender.address,
            data: tokenDeploy.encodeABI(),
            nonce: nonceVal,
            gas: 4000000
        }
        let signedTokenTx = await web3.eth.accounts.signTransaction(tokenTx, sender.privateKey);
        console.log('deploy token tx hash: ' + signedTokenTx.transactionHash);
        await web3.eth.sendSignedTransaction(signedTokenTx.rawTransaction)
            .on('receipt', receipt => {
                console.log(receipt);
                console.log("token contract address: ", receipt.contractAddress);
                tokenAddress = receipt.contractAddress;
            });
    }

    for (let i = 0; i < 1; i++) {
        console.log("");
        console.log("--------------------deloy aspect--------------------------");
        let aspectID;
        {
            let aspectCode = fs.readFileSync('./aspect/release.wasm', {
                encoding: "hex"
            });
            // instantiate an instance of aspect
            let aspect = new web3.atl.Aspect();
            let deploy = await aspect.deploy({
                data: '0x' + aspectCode,
                joinPoints: ["PreContractCall", "PostContractCall"],
                // properties: ["PostTxExecute", "PreTxExecute",
                //     { 'key': 'owner', 'value': sender.address },
                //     { 'key': 'binding', 'value': tokenAddress },
                // ],
                properties: [],
                paymaster: sender.address,
                proof: '0x0',
            });

            // instantiate an instance of aspect
            // let aspect = new web3.atl.Aspect();
            // let aspectDeployData = aspect.deploy({
            //     data: '0x' + aspectCode,
            //     properties: [],
            //     paymaster: account.address,
            //     joinPoints: ["PreContractCall"],
            //     proof: '0x0'
            // }).encodeABI();

            let tx = {
                from: sender.address,
                data: deploy.encodeABI(),
                to: ARTELA_ADDR,
                gasPrice,
                gas: 9000000
            }
            let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
            console.log("sending signed transaction...");
            let ret = await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                });
            aspectID = ret.aspectAddress;
            console.log("ret: ", ret);
            console.log("== deploy aspectID ==", aspectID)
        }

        await new Promise(r => setTimeout(r, 1000));

        let tokenContract = new web3.eth.Contract(tokenAbi, tokenAddress);

        console.log("");
        console.log("--------------------binding aspect to storage contract---------------------------");
        {
            // bind the smart contract with aspect
            let bind = await tokenContract.bind({
                priority: 1,
                aspectId: aspectID,
                to: tokenAddress,
                aspectVersion: 1,
            })

            let tx = {
                from: sender.address,
                data: bind.encodeABI(),
                gasPrice,
                to: ARTELA_ADDR,
                gas: 9000000
            }
            let signedTx = await web3.eth.accounts.signTransaction(tx, sender.privateKey);
            console.log("sending signed transaction...");
            await web3.eth.sendSignedTransaction(signedTx.rawTransaction)
                .on('receipt', receipt => {
                    console.log(receipt);
                });
            console.log("== aspect bind success ==");
        }
    }

    // await new Promise(r => setTimeout(r, 1000));
    console.log("token contract address: ", tokenAddress);
}

f().then();