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
    stringToUint8Array, JitCallBuilder, StaticCallRequest, CallTreeQuery, EthCallTree, uint8ArrayToAddress,
} from "@artela/aspect-libs";

import { IPreContractCallJP, IPostContractCallJP } from "@artela/aspect-libs/types/aspect-interface";
import { Protobuf } from "as-proto/assembly/Protobuf";
export class StressTestAspect implements IPreContractCallJP, IPostContractCallJP {
    preContractCall(ctx: PreContractCallInput): void {
        sys.log("---running joinpoint preContractCall");
        ///
        /// utils hostapi
        ///
        sys.log("utils hostapi");
        const hexStr = "6A";
        const encodedHex = hexToUint8Array(hexStr);
        const decodedHex = uint8ArrayToHex(encodedHex);
        sys.require(decodedHex != hexStr, "hexToUint8Array or uint8ArrayToHex error");
        // sys.hostApi.util.revert("error message");

        ///
        /// statedb hostapi
        ///
        sys.log("statedb hostapi");
        const balance = sys.hostApi.stateDb.balance(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const state = sys.hostApi.stateDb.stateAt(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"), stringToUint8Array(""));
        const codeHash = sys.hostApi.stateDb.codeHash(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const nonce = sys.hostApi.stateDb.nonce(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));

        ///
        /// runtime context hostapi
        ///
        sys.log("runtime hostapi");
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
        sys.log("crypto hostapi");
        let cryptostr = stringToUint8Array("test");
        let keccakdata = sys.hostApi.crypto.keccak(cryptostr);
        let sha256data = sys.hostApi.crypto.sha256(cryptostr);
        let ripemd160data = sys.hostApi.crypto.ripemd160(cryptostr);
        // let ecRecoverdata = sys.hostApi.crypto.ecRecover(cryptostr);

        let walletAddress = "0xBed7f94DF2B8e44A963d52474E2aBDE05Ed2A86c";
        let callData = "test";
        ///
        /// other calls
        ///
        sys.log("calls hostapi");
        let ethMessage = new StaticCallRequest();
        const from = sys.hostApi.aspectProperty.get("from");
        sys.log("property from");
        const to = sys.hostApi.aspectProperty.get("to");
        sys.log("property to");
        const data = sys.hostApi.aspectProperty.get("data");
        sys.log("property data");
        ethMessage.from = from
        ethMessage.to = to
        ethMessage.gas = 400000;
        ethMessage.data = data;
        let staticCallresult = sys.hostApi.evmCall.staticCall(ethMessage);

        // let request = new JitCallBuilder()
        //     .callData(stringToUint8Array(callData))
        //     .sender(hexToUint8 Array(walletAddress))
        //     .build();
        // let jitresponse = sys.hostApi.evmCall.jitCall(request);
    }

    postContractCall(ctx: PostContractCallInput): void {
        sys.log("---running joinpoint preContractCall");

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