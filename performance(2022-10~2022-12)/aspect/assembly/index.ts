
import { StoreAspect } from "./aspect/aspect";
import { Entry, sys } from "@artela/aspect-libs";

const aspect = new StoreAspect();
const entry = new Entry(aspect, aspect, null, null);


export function execute(methodPtr: i32, argPtr: i32): i32 {
    return entry.execute(methodPtr, argPtr);
}

export function isBlockLevel(): i32 {
    return entry.isBlockLevel();
}

export function isTransactionLevel(): i32 {
    return entry.isTransactionLevel();
}

export function isTransactionVerifier(): i32 {
    return entry.isTransactionVerifier();
}

export function allocate(size: i32): i32 {
    return __alloc(size) as i32;
}


