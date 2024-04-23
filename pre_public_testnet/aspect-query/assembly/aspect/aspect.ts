import {
    ethereum,
    sys,
    StringData,
    MessageUtil,
    entryPoint,
    execute,
    allocate,
    PreContractCallInput,
    PostContractCallInput,
    uint8ArrayToHex,
    hexToUint8Array,
    BytesData,
    stringToUint8Array, JitCallBuilder, StaticCallRequest, CallTreeQuery, EthCallTree, uint8ArrayToAddress, BigInt,
} from "@artela/aspect-libs";

import { IPreContractCallJP, IPostContractCallJP } from "@artela/aspect-libs/types/aspect-interface";
import { Protobuf } from "as-proto/assembly/Protobuf";
export class StressTestAspect implements IPreContractCallJP, IPostContractCallJP {
    preContractCall(ctx: PreContractCallInput): void {
        sys.log("---running joinpoint preContractCall");
        // for (let i = 0; i < 1000; i) {
        // }
        sys.log("---running utils hostapi");
        ///
        /// utils hostapi
        ///
        const hexStr = "6A";
        const encodedHex = hexToUint8Array(hexStr);
        const decodedHex = uint8ArrayToHex(encodedHex);
        sys.require(decodedHex != hexStr, "hexToUint8Array or uint8ArrayToHex error");
        // sys.hostApi.util.revert("error message");

        ///
        /// statedb hostapi
        ///
        const balance = sys.hostApi.stateDb.balance(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const state = sys.hostApi.stateDb.stateAt(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"), stringToUint8Array(""));
        const codeHash = sys.hostApi.stateDb.codeHash(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const nonce = sys.hostApi.stateDb.nonce(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));

        ///
        /// runtime context hostapi
        ///
        const txBytes = sys.hostApi.runtimeContext.get("tx.bytes");
        const txBytesData = Protobuf.decode<BytesData>(txBytes, BytesData.decode);

        const messageUtil = MessageUtil.instance();
        const key = "123";
        const sateChangeQuery = new StringData(key);
        const query = messageUtil.ToAny<StringData>(messageUtil.StringData,
            sateChangeQuery,
            StringData.encode,
        );

        const outPtr = sys.hostApi.aspectProperty.get(key);
        sys.hostApi.aspectState.set("key", stringToUint8Array("data"));


        let aspId = sys.aspect.id();
        let version = sys.aspect.version();

        ///
        /// crypto hostapi
        ///
        let cryptostr = stringToUint8Array("test");
        let keccakdata = sys.hostApi.crypto.keccak(cryptostr);
        let sha256data = sys.hostApi.crypto.sha256(cryptostr);
        let ripemd160data = sys.hostApi.crypto.ripemd160(cryptostr);
        // let ecRecoverdata = sys.hostApi.crypto.ecRecover(cryptostr);

        let walletAddress = "0xBed7f94DF2B8e44A963d52474E2aBDE05Ed2A86c";
        let callData = "test";
        // /
        // / other calls
        // /
        let ethMessage = new StaticCallRequest();
        const from = sys.hostApi.aspectProperty.get("from");
        const to = sys.hostApi.aspectProperty.get("to");
        const data = sys.hostApi.aspectProperty.get("data");
        ethMessage.from = from
        ethMessage.to = to
        ethMessage.gas = 400000;
        ethMessage.data = data;
        let staticCallresult = sys.hostApi.evmCall.staticCall(ethMessage);

        sys.log("-----------get transaction")
        // let request = new JitCallBuilder()
        //     .callData(stringToUint8Array(callData))
        //     .sender(hexToUint8 Array(walletAddress))
        //     .build();
        // let jitresponse = sys.hostApi.evmCall.jitCall(request);

        // let data = sys.hostApi.crypto.bigModExp(BigInt.ONE, BigInt.ZERO, BigInt.fromInt64(100));

        // let tx = sys.hostApi.blockchain.getTransactionByHash(hexToUint8Array("0x719f98d78cbb75d1a12788e9cb0dd0889249c9ce91e1d054eac79cc3d28252b7"))
        // if (!tx) {
        //     sys.log("tx not found");
        // } else {
        //     sys.log("transaction: accesses " + uint8ArrayToHex(tx.accesses))
        //     sys.log("transaction: blockHash " + uint8ArrayToHex(tx.blockHash))
        //     sys.log("transaction: blockNumber " + tx.blockNumber.toString())
        //     sys.log("transaction: chainId " + tx.chainId.toString())
        //     sys.log("transaction: from " + uint8ArrayToHex(tx.from))
        //     sys.log("transaction: gas " + tx.gas.toString())
        //     sys.log("transaction: gasFeeCap " + tx.gasFeeCap.toString())
        //     sys.log("transaction: gasPrice " + tx.gasPrice.toString())
        //     sys.log("transaction: gasTipCap " + tx.gasTipCap.toString())
        //     sys.log("transaction: hash " + uint8ArrayToHex(tx.hash))
        //     sys.log("transaction: input " + uint8ArrayToHex(tx.input))
        //     sys.log("transaction: nonce " + tx.nonce.toString())
        //     sys.log("transaction: type " + tx.type.toString())
        //     sys.log("transaction: transactionIndex " + tx.transactionIndex.toString())
        //     sys.log("transaction: to " + uint8ArrayToHex(tx.to))
        //     sys.log("transaction: r " + uint8ArrayToHex(tx.r))
        //     sys.log("transaction: s " + uint8ArrayToHex(tx.s))
        //     sys.log("transaction: v " + uint8ArrayToHex(tx.v))
        //     sys.log("transaction: value " + uint8ArrayToHex(tx.value))
        // }
    }

    postContractCall(ctx: PostContractCallInput): void {
        sys.log("---running joinpoint postContractCall");

        // Get the method of currently called contract.
        const currentCallMethod = ethereum.parseMethodSig(ctx.call!.data);


        // Define functions that are not allowed to be reentered.
        const noReentrantMethods: Array<string> = [
            ethereum.computeMethodSig('transfer()'),
            ethereum.computeMethodSig('transferFrom()')
        ];

        // Verify if the current method is within the scope of functions that are not susceptible to reentrancy.
        if (noReentrantMethods.includes(currentCallMethod)) {

            const callTreeQuery = new CallTreeQuery(-1);
            const queryCallTree = sys.hostApi.trace.queryCallTree(callTreeQuery);
            const ethCallTree = Protobuf.decode<EthCallTree>(queryCallTree, EthCallTree.decode);
            var size = ethCallTree.calls.size;
            var arrayKeys = ethCallTree.calls.keys();

            for (let i = 0; i < size; i++) {
                var key = arrayKeys[i];
                var oneCall = ethCallTree.calls.get(key);
                const parentCallMethod = ethereum.parseMethodSig(oneCall.data);
                if (noReentrantMethods.includes(parentCallMethod)) {
                    // If yes, revert the transaction.
                    // sys.revert(`illegal transaction: method reentered from ${currentCallMethod} to ${parentCallMethod}`);
                }
            }
        }
    }


    //****************************
    // unused methods
    //****************************

    isOwner(sender: Uint8Array): bool {
        return true;
    }

}

// 2.register aspect Instance
const aspect = new StressTestAspect()
entryPoint.setAspect(aspect)

// 3.must export it
export { execute, allocate }