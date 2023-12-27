const Web3 = require('@artela/web3');
const web3 = new Web3('http://127.0.0.1:8545');
const fs = require('fs');

async function f() {
    for (let i = 0; i < 10; i++) {
        let total = 0;
        for (let j = 0; j < 10; j++) {
            let maxN = 7200000;
            let minN = 600000;
            const randN = Math.floor(Math.random() * maxN + minN);
            total += randN;
        }
        console.log("number: ", total / 60000);
    }

    // for (let i = 0; i < 100; i++) {
    //     let maxN = 3600000;
    //     let minN = 600000;
    //     const randN = Math.floor(Math.random() * maxN + minN);
    //     console.log("waitting: ", randN / 60000, "minutes, ");
    // }

    // const files = fs.readdirSync("./keys");
    // let index = files.length;

    // let create_ount = 100;

    // let addressFile = "./keys/_address.txt"
    // if (fs.existsSync(addressFile)) {
    //     index = index - 1
    // }

    // for (let i = index + 1; i <= index + create_ount; i++) {
    //     let fileIndex = i;

    //     let privateFile = "./keys/" + fileIndex + '.txt';
    //     let account;
    //     account = web3.atl.accounts.create();
    //     fs.writeFileSync(privateFile, account.privateKey);

    //     // add account to wallet
    //     web3.atl.accounts.wallet.add(account.privateKey);

    //     //fs.rename(privateFile, "./keys/" + fileIndex + ".txt", (err) => {
    //     //    if (err) {
    //     //        console.log('rename pk file error', err);
    //     //        throw err;
    //     //    }
    //     //})
    //     console.log("created account, key index:" + fileIndex + ", " + "address: ", account.address);

    //     fs.writeFileSync(addressFile, fileIndex + ": " + account.address + "\n", {
    //         flag: "a"
    //     });
    // }
}

f().then();