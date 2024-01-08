import {
    entryPoint,
    execute,
    allocate,

    TxVerifyInput,
    PreTxExecuteInput,
    PreContractCallInput,
    PostContractCallInput,
    PostTxExecuteInput,

    ITransactionVerifier,
    IPreTxExecuteJP,
    IPreContractCallJP,
    IPostContractCallJP,
    IPostTxExecuteJP,

    sys,
    hexToUint8Array,
    BigInt,
    ethereum,
    JitCallBuilder,
    StaticCallRequest,
} from "@artela/aspect-libs";

export class MyAspect implements
    ITransactionVerifier,
    IPreTxExecuteJP,
    IPreContractCallJP,
    IPostContractCallJP,
    IPostTxExecuteJP {

    //****************************
    // Optional Methods
    //****************************

    /**
     * verifyTx is a join-point which will be invoked in both check mode and deliver mode.
     * This method is optional; remove ITransactionVerifier if you do not want to include this functionality.
     *
     * @param ctx context of the given join-point
     * @return the sender of the transaction
     */
    verifyTx(input: TxVerifyInput): Uint8Array {
        return new Uint8Array(0);
    }

    /**
     * preTxExecute is a join-point which will be invoked before the transaction execution.
     * This method is optional; remove IPreTxExecuteJP if you do not want to include this functionality.
     *
     * @param input context of the given join-point
     * @return
     */
    preTxExecute(input: PreTxExecuteInput): void {
        const val = sys.aspect.mutableState.get<i32>("counter");
        let count = val.unwrap();
        sys.require(count <= 100, "The contract is invoked more than 100 times.")

        val.set<i32>(count + 1);



        // sys.require
        // sys.revert
        // sys.log

        // sys.aspect.id
        // sys.aspect.version
        // sys.aspect.mutableState
        // sys.aspect.property
        // sys.aspect.readonlyState
        // sys.aspect.transientStorage

        // sys.hostApi.aspectProperty
        // sys.hostApi.aspectState
        // sys.hostApi.aspectTransientStorage
        // sys.hostApi.crypto.ecRecover
        // sys.hostApi.crypto.keccak
        // sys.hostApi.crypto.ripemd160
        // sys.hostApi.crypto.sha256
        // sys.hostApi.runtimeContext
        // sys.hostApi.stateDb.balance
        // sys.hostApi.stateDb.codeHash
        // sys.hostApi.stateDb.codeSize
        // sys.hostApi.stateDb.hasSuicided
        // sys.hostApi.stateDb.nonce
        // sys.hostApi.stateDb.stateAt
        // sys.hostApi.util.log
        // sys.hostApi.util.revert
        // sys.hostApi.evmCall.jitCall
        // sys.hostApi.evmCall.staticCall
        // sys.hostApi.trace.queryCallTree
        // sys.hostApi.trace.queryStateChange
  
        // 'hexToUint8Array' is imported from "@artela/aspect-libs";
        let addr = hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");

        // get balance for the account
        // 'sys, BigInt' is imported from "@artela/aspect-libs";
        let balance = BigInt.fromUint8Array(sys.hostApi.stateDb.balance(addr));

        // check the balance base the rule.
        if (balance.toUInt64() < 1000) {
            sys.revert("abort transaction, balance is not enough");
        }
        
    }

    /**
     * preContractCall is a join-point which will be invoked before the contract call is executed.
     * This method is optional; remove IPreContractCallJP if you do not want to include this functionality.
     *
     * @param input context of the given join-point
     * @return
     */
    preContractCall(input: PreContractCallInput): void {
        let blockNumer = input.block!.number
        let from = input.call!.from
        let to = input.call!.to
        let data = input.call!.data
        let gas = input.call!.gas  
        let index = input.call!.index
        let value = input.call!.value

        let callData = ethereum.abiEncode('save', [
            ethereum.Number.fromU32(100, 32)
        ]);

        let sender = hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4");
        let request = JitCallBuilder.simple(
            sender,
            input.call!.to,
            hexToUint8Array(callData)
        ).build();

        // Submit the JIT call
        let response = sys.hostApi.evmCall.jitCall(request);
        if (!response.success) {
            sys.revert(response.errorMsg);
        }
    }

    /**
    * postContractCall is a join-point which will be invoked after a contract has finished.
    * This method is optional; remove IPostContractCallJP if you do not want to include this functionality.
    *
    * @param input context of the given join-point
    * @return
    */
    postContractCall(input: PostContractCallInput): void {
        // let blockNumer = input.block!.number
        // let from = input.call!.from
        // let to = input.call!.to
        // let data = input.call!.data
        // let gas = input.call!.gas  
        // let index = input.call!.index
        // let value = input.call!.value
        // let ret = input.call!.ret
        // let error = input.call?.error

        let ethMessage = new StaticCallRequest();
        const from = sys.hostApi.aspectProperty.get("from");
        const to = sys.hostApi.aspectProperty.get("to");
        const data = sys.hostApi.aspectProperty.get("data");
        ethMessage.from = from
        ethMessage.to = to
        ethMessage.gas = 400000;
        ethMessage.data = data;
        let staticCallresult = sys.hostApi.evmCall.staticCall(ethMessage);
        if (staticCallresult.vmError != "") {
            sys.revert("static call failed");
        }
    }

    /**
     * postTxExecute is a join-point which will be invoked when the transaction execution is finished but state is not committed.
     * This method is optional; remove IPostTxExecuteJP if you do not want to include this functionality.
     *
     * @param input context of the given join-point
     * @return
     */
    postTxExecute(input: PostTxExecuteInput): void {
        let blockNumer = input.block!.number;
        let from = input.tx!.from;
        let to = input.tx!.to;
        let hash = input.tx!.hash;
        let status = input.receipt!.status;
    }


    //****************************
    // Required Methods
    //****************************

    /**
     * isOwner is the governance account implemented by the Aspect. 
     * When any governance operation (including upgrade, config, destroy) is performed, 
     * the isOwner method will be invoked to check against the initiator's account 
     * to ensure it has the necessary permission.
     *
     * @param ctx Context of Aspect state
     * @param sender Address of the operation initiator
     * @return True if the check is successful, false if the check fails
     */
    isOwner(sender: Uint8Array): bool {
        return true;
    }

}

// Register your aspect instance to aspect libs
const aspect = new MyAspect()
entryPoint.setAspect(aspect)

// Export lib methods for aspect-runtime
export { execute, allocate }