import {
    ethereum,
    FilterTxCtx,
    IAspectBlock,
    IAspectTransaction,
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

import { Protobuf } from "as-proto/assembly/Protobuf";


export class StoreAspect implements IAspectTransaction, IAspectBlock {

    filterTx(ctx: FilterTxCtx): bool {

        return true
        // add test data

    }

    isOwner(sender: string): bool {
        return true;
    }

    onBlockFinalize(ctx: OnBlockFinalizeCtx): void {
    }


    onBlockInitialize(ctx: OnBlockInitializeCtx): void {
    }

    onContractBinding(contractAddr: string): bool {
        return true;
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

    postTxCommit(ctx: PostTxCommitCtx): void {
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
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
    }

    preContractCall(ctx: PreContractCallCtx): void {
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

    preTxExecute(ctx: PreTxExecuteCtx): void {
        ///
        /// statedb hostapi
        ///
        sys.hostApi.util.log("call statedb hostapi");
        let balance = sys.hostApi.stateDb.balance("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
        let state = sys.hostApi.stateDb.stateAt("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4", "");
        let refund = sys.hostApi.stateDb.refund();
        let codeHash = sys.hostApi.stateDb.codeHash("E2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
        let nonce = sys.hostApi.stateDb.nonce("E2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
    }

}
