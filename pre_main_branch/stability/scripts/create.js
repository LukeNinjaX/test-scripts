const { web3, workingDir } = require('./common');
const fs = require('fs');

async function f() {
    const files = fs.readdirSync("./keys");
    let index = files.length;

    let create_ount = 10000;

    let addressFile = "./keys/_address.txt"
    if (fs.existsSync(addressFile)) {
        index = index - 1
    }

    for (let i = index + 1; i <= index + create_ount; i++) {
        let fileIndex = i;

        let privateFile = "./keys/" + fileIndex + '.txt';
        let account;
        account = web3.atl.accounts.create();
        fs.writeFileSync(privateFile, account.privateKey);

        // add account to wallet
        web3.atl.accounts.wallet.add(account.privateKey);

        //fs.rename(privateFile, "./keys/" + fileIndex + ".txt", (err) => {
        //    if (err) {
        //        console.log('rename pk file error', err);
        //        throw err;
        //    }
        //})
        console.log("created account, key index:" + fileIndex + ", " + "address: ", account.address);

        fs.writeFileSync(addressFile, fileIndex + ": " + account.address + "\n", {
            flag: "a"
        });
    }
}

f().then();