# test-scripts

The repository contains a collection of test scripts designed for evaluating the Artela blockchain. These scripts serve as comprehensive tools to assess the functionality and performance of the Artela chain.


# Instructions

1. Generating Private Keys
Generate 10,000 private keys (not necessary if already present in the ./keys directory). Create a directory named keys under stability. Run the script node scripts/create.js.

2. Recharging
Replace bankPK in scripts/charge10000.js and then execute the script by running node scripts/charge10000.js to recharge all keys.

3. Contract Deployment
Deploy the contract using node script/binding.cjs.

4. Testing
For testing, modify tokenAddress in scripts/tps1.js with the contract deployed in the third step. Then execute the script by running node scripts/tps1.js.


# test evm cryptos
1. switch artelad, aspect-core, aspect-tooling to branch: feat/evm-cryptos, Start artela node.
2. build aspect: cd /home/luke/go/src/github.com/artela-network/test-scripts/pre_public_testnet/aspect; npm run aspect:build; cp ./build/release.wasm ../stability/aspect/.
3. replace pk and start script to test: cd /home/luke/go/src/github.com/artela-network/test-scripts/pre_public_testnet/stability; node scripts/test-call.cjs
