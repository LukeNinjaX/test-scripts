import {
    ethereum,
    FilterTxCtx,
    IAspectBlock,
    OnBlockFinalizeCtx,
    OnBlockInitializeCtx,
    PostContractCallCtx,
    PostTxCommitCtx,
    PostTxExecuteCtx,
    PreContractCallCtx,
    PreTxExecuteCtx,
    ScheduleOpts,
    ScheduleTx,
    sys,
    EthTransaction,
    EthMessage,
    QueryNameSpace,
    StringData,
    MessageUtil,
    RemoveNameSpace,
    Any,
    SetNameSpace,
    JitInherentRequest,
} from "@artela/aspect-libs";

import { IPreContractCallJP, IPostContractCallJP, IPreTxExecuteJP, IPostTxExecuteJP } from "@artela/aspect-libs/types/aspect-interface";

import { Protobuf } from "as-proto/assembly/Protobuf";

export class StoreAspect implements IPreContractCallJP, IPostContractCallJP {
    preContractCall(ctx: PreContractCallCtx): void {
        ///
        /// utils hostapi
        ///
        sys.hostApi.util.log("call utils hostapi");
        let hexStr = "6A";
        let encodedHex = sys.hostApi.util.hexToUint8Array(hexStr);
        let decodedHex = sys.hostApi.util.uint8ArrayToHex(encodedHex);
        sys.require(decodedHex != hexStr, "hexToUint8Array or uint8ArrayToHex error");

        sys.hostApi.util.log("---calling aspect PreContractCallCtx");
        // sys.hostApi.util.revert("error message");

        ///
        /// statedb hostapi
        ///
        sys.hostApi.util.log("call statedb hostapi");
        let balance = sys.hostApi.stateDb.balance("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
        let state = sys.hostApi.stateDb.stateAt("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4", "");
        let refund = sys.hostApi.stateDb.refund();
        let codeHash = sys.hostApi.stateDb.codeHash("E2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
        let nonce = sys.hostApi.stateDb.nonce("E2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");

        ///
        /// runtime context hostapi
        ///
        sys.hostApi.util.log("call runtime context hostapi");
        const getresponse = sys.hostApi.runtimeContext.get("tx^context");
        if (getresponse.result!.success) {
            // decode data 
            let ehtTx = Protobuf.decode<EthTransaction>(getresponse.data!.value, EthTransaction.decode)
        }

        const messageUtil = MessageUtil.instance();
        let key = "123";
        const sateChangeQuery = new StringData(key);
        const query = messageUtil.ToAny<StringData>(messageUtil.StringData,
            sateChangeQuery,
            StringData.encode,
        );
        const outPtr = sys.hostApi.runtimeContext.query(QueryNameSpace.QueryAspectProperty, query);
        if (!outPtr.result!.success) {
        }

        const data = new StringData(key);
        const encode = Protobuf.encode(data, StringData.encode);
        const any = new Any(messageUtil.StringData, encode);
        sys.hostApi.runtimeContext.remove(RemoveNameSpace.RemoveAspectState, any);

        sys.hostApi.runtimeContext.set(SetNameSpace.SetAspectState, "key", "data");
        let aspId = sys.hostApi.runtimeContext.aspectId();

        ///
        /// crypto hostapi
        ///
        sys.hostApi.util.log("call crypto hostapi");
        let cryptostr = sys.utils.stringToUint8Array("test");
        let keccakdata = sys.hostApi.crypto.keccak(cryptostr);
        let sha256data = sys.hostApi.crypto.sha256(cryptostr);

        let base64Encodedata = sys.hostApi.crypto.base64Encode(cryptostr);
        let base64Decodedata = sys.hostApi.crypto.base64Decode(base64Encodedata);
        sys.require(base64Decodedata != cryptostr, 'base64Encode encode or decode failed')

        let base58Encodedata = sys.hostApi.crypto.base58Encode(cryptostr);
        let base58Decodedata = sys.hostApi.crypto.base58Decode(base58Encodedata);
        sys.require(base58Decodedata != cryptostr, 'base58Decode encode or decode failed')

        let ripemd160data = sys.hostApi.crypto.ripemd160(cryptostr);
        // let ecRecoverdata = sys.hostApi.crypto.ecRecover(cryptostr);

        let walletAddress = "0xBed7f94DF2B8e44A963d52474E2aBDE05Ed2A86c";
        let callData = "";
        ///
        /// other calls
        ///
        sys.hostApi.util.log("call other calls");
        let ethMessage = new EthMessage();
        let staticCallresult = sys.hostApi.evmCall.staticCall(ethMessage)

        let jitrequest = new JitInherentRequest(
            sys.utils.hexToUint8Array(walletAddress),
            123,
            new Uint8Array(0),
            sys.utils.hexToUint8Array(callData),
            sys.utils.hexToUint8Array(ethereum.Number.fromU64(1000000).encodeHex()),
            10000,
            0,
            new Uint8Array(0),
        );

        let jitresponse = sys.hostApi.evmCall.jitCall(jitrequest);
    }

    postContractCall(ctx: PostContractCallCtx): void {
        // Get the method of currently called contract.
        const currentCallMethod = ethereum.parseMethodSig(ctx.currentCall.data);

        // Define functions that are not allowed to be reentered.
        const noReentrantMethods: Array<string> = [
            ethereum.computeMethodSig('transfer()'),
            ethereum.computeMethodSig('transferFrom()')
        ];

        // Verify if the current method is within the scope of functions that are not susceptible to reentrancy.
        if (noReentrantMethods.includes(currentCallMethod)) {
            // Check if there already exists a non-reentrant method on the current call path.
            let parentIndex = ctx.currentCall.parentIndex;
            // Retrieve the call stack from the context, which refers to
            // all contract calls along the path of the current contract method invocation.
            while (parentIndex >= 0) {
                const parentCall = ctx.trace.findCall(parentIndex)!;
                const parentCallMethod = ethereum.parseMethodSig(parentCall.data);
                if (noReentrantMethods.includes(parentCallMethod)) {
                    // If yes, revert the transaction.
                    // sys.revert(`illegal transaction: method reentered from ${currentCallMethod} to ${parentCallMethod}`);
                }
                parentIndex = parentCall.parentIndex;
            }
        }
    }


    //****************************
    // unused methods
    //****************************

    isOwner(sender: string): bool { return true; }

}
