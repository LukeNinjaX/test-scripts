import {
    sys,
    PreContractCallInput,
    PostContractCallInput,
} from "@artela/aspect-libs";

import { IPreContractCallJP, IPostContractCallJP } from "@artela/aspect-libs/types/aspect-interface";

export class StoreAspect implements IPreContractCallJP, IPostContractCallJP {
    preContractCall(ctx: PreContractCallInput): void {

        const val = sys.aspect.mutableState.get<i32>("state-key");
        let n1 = val.unwrap();
        sys.log("|||preContractCall before value: " + n1.toString());

        val.set<i32>(n1 + 1);
        let n2 = val.unwrap();
        sys.log("|||preContractCall after value: " + n2.toString());

    }

    postContractCall(ctx: PostContractCallInput): void {
        const val = sys.aspect.mutableState.get<i32>("state-key");
        let n1 = val.unwrap();
        sys.log("|||postContractCall before value: " + n1.toString());
    }


    //****************************
    // unused methods
    //****************************

    isOwner(sender: Uint8Array): bool { return true; }

}
