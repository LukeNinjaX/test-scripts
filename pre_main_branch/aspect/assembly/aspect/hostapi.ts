// The entry file of your WebAssembly module.

import {
  allocate,
  entryPoint,
  execute,
  IAspectOperation,
  InitInput,
  IPostContractCallJP,
  IPostTxExecuteJP,
  IPreContractCallJP,
  IPreTxExecuteJP,
  ITransactionVerifier,
  OperationInput,
  PostContractCallInput,
  PostTxExecuteInput,
  PreContractCallInput,
  PreTxExecuteInput,
  TxVerifyInput,
  sys,
  uint8ArrayToHex,
  hexToUint8Array,
  Uint256,
} from '@artela/aspect-libs';

export class Joinpoints implements
  IAspectOperation,
  IPreContractCallJP,
  IPostContractCallJP,
  IPreTxExecuteJP,
  IPostTxExecuteJP,
  ITransactionVerifier {
  init(input: InitInput): void {
    this.checkInput(input.block!.number, input.tx!.from, input.tx!.to, input.tx!.hash, "init");
  }

  isOwner(sender: Uint8Array): bool {
    const value = sys.aspect.property.get<Uint8Array>("owner");
    return uint8ArrayToHex(value) == uint8ArrayToHex(sender);
  }

  verifyTx(input: TxVerifyInput): Uint8Array {
    const notEmptyAddress = hexToUint8Array("0000000000000000000000000000000000000001");
    this.checkInput(input.block!.number, notEmptyAddress, input.tx!.to, input.tx!.hash, "verifyTx");

    return sys.aspect.mutableState.get<Uint8Array>('owner').unwrap();
  }

  operation(input: OperationInput): Uint8Array {
    this.checkInput(input.block!.number, input.tx!.from, input.tx!.to, input.tx!.hash, "operation");
    this.checkSys();
    return input.callData;
  }

  preContractCall(input: PreContractCallInput): void {
    const notEmptyHash = Uint256.fromInt64(1).toUint8Array();
    this.checkInput(input.block!.number, input.call!.from, input.call!.to, notEmptyHash, "PreContractCallInput");
    this.assert(input.call!.gas > 0, "PostContractCallInput, gas large than zero");
  }

  postContractCall(input: PostContractCallInput): void {
    const notEmptyHash = Uint256.fromInt64(1).toUint8Array();
    this.checkInput(input.block!.number, input.call!.from, input.call!.to, notEmptyHash, "PostContractCallInput");
    this.assert(input.call!.gas > 0, "PostContractCallInput, gas large than zero");
  }

  preTxExecute(input: PreTxExecuteInput): void {
    this.checkInput(input.block!.number, input.tx!.from, input.tx!.to, input.tx!.hash, "PreTxExecuteInput");
  }

  postTxExecute(input: PostTxExecuteInput): void {
    this.checkInput(input.block!.number, input.tx!.from, input.tx!.to, input.tx!.hash, "PostTxExecuteInput");
  }

  checkInput(blockNumber: u64, txFrom: Uint8Array, txTo: Uint8Array, txHash: Uint8Array, name: string): void {
    const emptyHash = "0000000000000000000000000000000000000000000000000000000000000000";
    const emptyAddress = "0000000000000000000000000000000000000000";

    this.assert(blockNumber > 0, name + ", block.number large than zero");
    this.assert(uint8ArrayToHex(txFrom) != emptyAddress, name + ", from not empty");
    this.assert(uint8ArrayToHex(txTo) != emptyAddress, name + ", to not empty");
    this.assert(uint8ArrayToHex(txHash) != emptyHash, name + ", to not empty");
  }

  checkSys(): void {
    const aspectID = sys.aspect.id();
    this.assert(aspectID != "", "sys.aspect.id");

    const aspectVer = sys.aspect.version();
    this.assert(aspectVer == 1, "sys.aspect.version");

    // context methods
    const keys = [
      'isCall',
      'tx.type',
      'tx.chainId',
      'tx.accessList',
      'tx.nonce',
      'tx.gasPrice',
      'tx.gas',
      'tx.gasTipCap',
      'tx.gasFeeCap',
      'tx.to',
      'tx.value',
      'tx.data',
      'tx.bytes',
      'tx.hash',
      'tx.unsigned.bytes',
      'tx.unsigned.hash',
      'tx.sig.v',
      'tx.sig.r',
      'tx.sig.s',
      'tx.from',
      'tx.index',
      'block.header.parentHash',
      'block.header.miner',
      'block.header.transactionsRoot',
      'block.header.number',
      'block.header.timestamp',
      'env.extraEIPs',
      'env.enableCreate',
      'env.enableCall',
      'env.allowUnprotectedTxs',
      'env.chain.chainId',
      'env.chain.homesteadBlock',
      'env.chain.daoForkBlock',
      'env.chain.daoForkSupport',
      'env.chain.eip150Block',
      'env.chain.eip155Block',
      'env.chain.eip158Block',
      'env.chain.byzantiumBlock',
      'env.chain.constantinopleBlock',
      'env.chain.petersburgBlock',
      'env.chain.istanbulBlock',
      'env.chain.muirGlacierBlock',
      'env.chain.berlinBlock',
      'env.chain.londonBlock',
      'env.chain.arrowGlacierBlock',
      'env.chain.grayGlacierBlock',
      'env.chain.mergeNetSplitBlock',
      'env.chain.shanghaiTime',
      'env.chain.cancunTime',
      'env.chain.pragueTime',
      'env.consensusParams.block.maxGas',
      'env.consensusParams.block.maxBytes',
      'env.consensusParams.evidence.maxAgeDuration',
      'env.consensusParams.evidence.maxAgeNumBlocks',
      'env.consensusParams.evidence.maxBytes',
      'env.consensusParams.validator.pubKeyTypes',
      'env.consensusParams.appVersion',
      'aspect.id',
      'aspect.version'
    ];

    let str: string = "";
    for (let i = 0; i < keys.length; i++) {
      const key = keys[i];
      const data = sys.hostApi.runtimeContext.get("key");
      const value = uint8ArrayToHex(data);
      const kvstr = key + ":" + value + ";";
      str = str.concat(kvstr);
    }

    const savedContext = sys.aspect.mutableState.get<string>("savedContext");
    if (savedContext.unwrap() != "") {
      this.assert(savedContext.unwrap() == str, "check context")
    } else {
      savedContext.set<string>(str);
    }

    // const isCall = sys.hostApi.runtimeContext.get("isCall");
    // const expectIsCall = sys.aspect.property.get<Uint8Array>("isCall");
    // this.assert(this.arraysEqual(isCall, expectIsCall), "context.isCall");
  }

  assert(equal: bool, name: string = ""): void {
    if (!equal) {
      let msg = "assert failed: " + name;
      sys.revert(msg);
      return;
    }
  }

  arraysEqual(arr1: Uint8Array, arr2: Uint8Array): bool {
    if (arr1.length !== arr2.length) {
      return false;
    }

    for (let i = 0; i < arr1.length; i++) {
      if (arr1[i] !== arr2[i]) {
        return false;
      }
    }

    return true;
  }
}
// 2.register aspect Instance
const aspect = new Joinpoints();
entryPoint.setOperationAspect(aspect);
entryPoint.setAspect(aspect);

// 3.must export it
export { execute, allocate };
