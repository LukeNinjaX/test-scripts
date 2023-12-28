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


export class TestStoreAspect implements IAspectTransaction, IAspectBlock {

    preContractCall(ctx: PreContractCallCtx): void {
        // let n1 = sys.aspect.mutableState(ctx).get<i32>("state-key").unwrap();
        // sys.log("preContractCall before value: " + n1.toString());

        // sys.aspect.mutableState(ctx).get<string>("state-key").set<i32>(n1 + 1);

        // let n2 = sys.aspect.mutableState(ctx).get<i32>("state-key").unwrap();
        // sys.log("preContractCall after value: " + n2.toString());

        const val1 = sys.aspect.mutableState(ctx).get<i32>("state-key");
        let n11 = val1.unwrap();
        sys.log("preContractCall before value: " + n11.toString());

        // val.set<i32>(n1 + 1);
        // let n2 = val.unwrap();
        // sys.log("preContractCall after value: " + n1.toString());

        // const val = sys.aspect.mutableState(ctx).get<i32>("state-key");
        // let n1 = val.unwrap();
        // sys.log("preContractCall before value: " + n1.toString());

        // val.set<i32>(n1 + 1);
        // let n2 = val.unwrap();
        // sys.log("preContractCall after value: " + n2.toString());

        let val = ctx.aspect.transientStorage<string>("context-key");
        let n1 = val.unwrap();
        sys.log("preContractCall before context value: " + n1);

        val.set<string>(n1 + "1");
        let n2 = val.unwrap();
        sys.log("preContractCall after context value: " + n2);
    }

    postContractCall(ctx: PostContractCallCtx): void {
        // let n1 = sys.aspect.mutableState(ctx).get<i32>("state-key").unwrap();
        // sys.log("postContractCall before value: " + n1.toString());

        let v2 = ctx.aspect.transientStorage<string>("context-key").unwrap();
        sys.log("preContractCall context-key value: " + v2);
    }


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

    postTxCommit(ctx: PostTxCommitCtx): void {
    }

    postTxExecute(ctx: PostTxExecuteCtx): void {
    }

    preTxExecute(ctx: PreTxExecuteCtx): void {
    }

}
