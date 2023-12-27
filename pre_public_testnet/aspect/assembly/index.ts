
import { StoreAspect } from "./aspect/aspect";
import { allocate, entryPoint, execute } from "@artela/aspect-libs";

// 2.register aspect Instance
const aspect = new StoreAspect()
entryPoint.setAspect(aspect)

// 3.must export it
export { execute, allocate }