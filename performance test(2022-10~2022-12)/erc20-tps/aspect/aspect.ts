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
                    sys.revert(`illegal transaction: method reentered from ${currentCallMethod} to ${parentCallMethod}`);
                }
                parentIndex = parentCall.parentIndex;
            }
        }
    }

    postTxCommit(ctx: PostTxCommitCtx): void {
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
    }

    preContractCall(ctx: PreContractCallCtx): void {
    }

    preTxExecute(ctx: PreTxExecuteCtx): void {
    }

}
