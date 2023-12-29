import * as __import0 from "util-api";
import * as __import1 from "statedb-api";
import * as __import2 from "runtime-api";
import * as __import3 from "aspect-property-api";
import * as __import4 from "aspect-state-api";
import * as __import5 from "crypto-api";
import * as __import6 from "evm-call-api";
import * as __import7 from "trace-api";
async function instantiate(module, imports = {}) {
  const __module0 = imports["util-api"];
  const __module1 = imports["statedb-api"];
  const __module2 = imports["runtime-api"];
  const __module3 = imports["aspect-property-api"];
  const __module4 = imports["aspect-state-api"];
  const __module5 = imports["crypto-api"];
  const __module6 = imports["evm-call-api"];
  const __module7 = imports["trace-api"];
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
    "util-api": Object.assign(Object.create(__module0), {
      "__UtilApi__.sLog"(ptr) {
        // ~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog(i32) => void
        __module0.__UtilApi__.sLog(ptr);
      },
      "__UtilApi__.revert"(ptr) {
        // ~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.revert(i32) => void
        __module0.__UtilApi__.revert(ptr);
      },
    }),
    "statedb-api": Object.assign(Object.create(__module1), {
      "__StateDbApi__.getBalance"(addr) {
        // ~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getBalance(i32) => i32
        return __module1.__StateDbApi__.getBalance(addr);
      },
      "__StateDbApi__.getState"(addr, hash) {
        // ~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getState(i32, i32) => i32
        return __module1.__StateDbApi__.getState(addr, hash);
      },
      "__StateDbApi__.getCodeHash"(addr) {
        // ~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getCodeHash(i32) => i32
        return __module1.__StateDbApi__.getCodeHash(addr);
      },
      "__StateDbApi__.getNonce"(addr) {
        // ~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getNonce(i32) => i32
        return __module1.__StateDbApi__.getNonce(addr);
      },
    }),
    "runtime-api": Object.assign(Object.create(__module2), {
      "__RuntimeContextApi__.get"(ctxKey) {
        // ~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get(i32) => i32
        return __module2.__RuntimeContextApi__.get(ctxKey);
      },
    }),
    "aspect-property-api": Object.assign(Object.create(__module3), {
      "__AspectPropertyApi__.get"(key) {
        // ~lib/@artela/aspect-libs/hostapi/aspect-property-api/__AspectPropertyApi__.get(i32) => i32
        return __module3.__AspectPropertyApi__.get(key);
      },
    }),
    "aspect-state-api": Object.assign(Object.create(__module4), {
      "__AspectStateApi__.set"(key, value) {
        // ~lib/@artela/aspect-libs/hostapi/aspect-state-api/__AspectStateApi__.set(i32, i32) => void
        __module4.__AspectStateApi__.set(key, value);
      },
    }),
    "crypto-api": Object.assign(Object.create(__module5), {
      "__CryptoApi__.keccak"(dataPtr) {
        // ~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.keccak(i32) => i32
        return __module5.__CryptoApi__.keccak(dataPtr);
      },
      "__CryptoApi__.sha256"(dataPtr) {
        // ~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.sha256(i32) => i32
        return __module5.__CryptoApi__.sha256(dataPtr);
      },
      "__CryptoApi__.ripemd160"(dataPtr) {
        // ~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.ripemd160(i32) => i32
        return __module5.__CryptoApi__.ripemd160(dataPtr);
      },
    }),
    "evm-call-api": Object.assign(Object.create(__module6), {
      "__EvmCallApi__.staticCall"(request) {
        // ~lib/@artela/aspect-libs/hostapi/evm-call-api/__EvmCallApi__.staticCall(i32) => i32
        return __module6.__EvmCallApi__.staticCall(request);
      },
    }),
    "trace-api": Object.assign(Object.create(__module7), {
      "__TraceApi__.queryCallTree"(query) {
        // ~lib/@artela/aspect-libs/hostapi/trace-api/__TraceApi__.queryCallTree(i32) => i32
        return __module7.__TraceApi__.queryCallTree(query);
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  return exports;
}
export const {
  memory,
  execute,
  allocate,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
    "util-api": __maybeDefault(__import0),
    "statedb-api": __maybeDefault(__import1),
    "runtime-api": __maybeDefault(__import2),
    "aspect-property-api": __maybeDefault(__import3),
    "aspect-state-api": __maybeDefault(__import4),
    "crypto-api": __maybeDefault(__import5),
    "evm-call-api": __maybeDefault(__import6),
    "trace-api": __maybeDefault(__import7),
  }
))(new URL("release.wasm", import.meta.url));
function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
