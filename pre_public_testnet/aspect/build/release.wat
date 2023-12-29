(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32) (result i64)))
 (type $9 (func (param i32 i32 i32) (result i32)))
 (type $10 (func (param i32 i32 i64)))
 (type $11 (func (param i32 i64)))
 (type $12 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $13 (func (param i32 i64 i32) (result i32)))
 (type $14 (func (param i32 i64 i32)))
 (type $15 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "util-api" "__UtilApi__.sLog" (func $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog (param i32)))
 (import "util-api" "__UtilApi__.revert" (func $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.revert (param i32)))
 (import "statedb-api" "__StateDbApi__.getBalance" (func $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getBalance (param i32) (result i32)))
 (import "statedb-api" "__StateDbApi__.getState" (func $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getState (param i32 i32) (result i32)))
 (import "statedb-api" "__StateDbApi__.getCodeHash" (func $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getCodeHash (param i32) (result i32)))
 (import "statedb-api" "__StateDbApi__.getNonce" (func $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getNonce (param i32) (result i32)))
 (import "runtime-api" "__RuntimeContextApi__.get" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get (param i32) (result i32)))
 (import "aspect-property-api" "__AspectPropertyApi__.get" (func $~lib/@artela/aspect-libs/hostapi/aspect-property-api/__AspectPropertyApi__.get (param i32) (result i32)))
 (import "aspect-state-api" "__AspectStateApi__.set" (func $~lib/@artela/aspect-libs/hostapi/aspect-state-api/__AspectStateApi__.set (param i32 i32)))
 (import "crypto-api" "__CryptoApi__.keccak" (func $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.keccak (param i32) (result i32)))
 (import "crypto-api" "__CryptoApi__.sha256" (func $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.sha256 (param i32) (result i32)))
 (import "crypto-api" "__CryptoApi__.ripemd160" (func $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.ripemd160 (param i32) (result i32)))
 (import "evm-call-api" "__EvmCallApi__.staticCall" (func $~lib/@artela/aspect-libs/hostapi/evm-call-api/__EvmCallApi__.staticCall (param i32) (result i32)))
 (import "trace-api" "__TraceApi__.queryCallTree" (func $~lib/@artela/aspect-libs/hostapi/trace-api/__TraceApi__.queryCallTree (param i32) (result i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/WRITER (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/READER (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrLoadRuntimeCtxValue (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectProperty (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectState (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrUpdateAspectState (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/ErrParseValueFail (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/errors/NotAuthorizedFail (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/types/entrance/entryPoint (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContextApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/stateApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-property/propertyApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/transientStorageApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.crypto (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.util (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.aspectState (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.aspectTransientStorage (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.trace (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.aspect.mutableState (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.aspect.readonlyState (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.aspect.property (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.aspect.transientStorage (mut i32) (i32.const 0))
 (global $assembly/aspect/aspect/aspect (mut i32) (i32.const 0))
 (global $assembly/index/aspect (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 43280))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\01")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\01")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\01")
 (data $11 (i32.const 1532) ",")
 (data $11.1 (i32.const 1544) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $12 (i32.const 1580) "<")
 (data $12.1 (i32.const 1592) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $13 (i32.const 1644) "\1c")
 (data $13.1 (i32.const 1656) "\02\00\00\00\n\00\00\00E\00r\00r\00o\00r")
 (data $14 (i32.const 1676) "\1c")
 (data $14.1 (i32.const 1688) "\02")
 (data $15 (i32.const 1708) "\\")
 (data $15.1 (i32.const 1720) "\02\00\00\00B\00\00\00l\00o\00a\00d\00 \00r\00u\00n\00t\00i\00m\00e\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00 \00f\00a\00i\00l\00e\00d")
 (data $16 (i32.const 1804) "L")
 (data $16.1 (i32.const 1816) "\02\00\00\00<\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00l\00o\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00p\00r\00o\00p\00e\00r\00t\00y")
 (data $17 (i32.const 1884) "L")
 (data $17.1 (i32.const 1896) "\02\00\00\00:\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00l\00o\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00c\00o\00n\00t\00e\00x\00t")
 (data $18 (i32.const 1964) "\\")
 (data $18.1 (i32.const 1976) "\02\00\00\00B\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00r\00e\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00s\00t\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data $19 (i32.const 2060) "\\")
 (data $19.1 (i32.const 2072) "\02\00\00\00F\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00a\00s\00p\00e\00c\00t\00 \00s\00t\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data $20 (i32.const 2156) "L")
 (data $20.1 (i32.const 2168) "\02\00\00\008\00\00\00u\00n\00a\00b\00l\00e\00 \00t\00o\00 \00p\00a\00r\00s\00e\00 \00a\00s\00p\00e\00c\00t\00 \00v\00a\00l\00u\00e")
 (data $21 (i32.const 2236) "|")
 (data $21.1 (i32.const 2248) "\02\00\00\00`\00\00\00u\00n\00k\00n\00o\00w\00a\00b\00l\00e\00 \00c\00o\00n\00t\00e\00x\00t\00,\00 \00n\00o\00t\00 \00a\00u\00t\00h\00o\00r\00i\00z\00e\00d\00 \00t\00o\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e")
 (data $22 (i32.const 2364) "|")
 (data $22.1 (i32.const 2376) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $23 (i32.const 2492) "l")
 (data $23.1 (i32.const 2504) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00c\00r\00y\00p\00t\00o\00-\00a\00p\00i\00.\00t\00s")
 (data $24 (i32.const 2604) "\9c")
 (data $24.1 (i32.const 2616) "\02\00\00\00\80\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00+\00/")
 (data $25 (i32.const 2764) ",")
 (data $25.1 (i32.const 2776) "\02\00\00\00\16\00\00\00o\00n\00T\00x\00R\00e\00c\00e\00i\00v\00e")
 (data $26 (i32.const 2812) "<")
 (data $26.1 (i32.const 2824) "\02\00\00\00\"\00\00\00o\00n\00B\00l\00o\00c\00k\00I\00n\00i\00t\00i\00a\00l\00i\00z\00e")
 (data $27 (i32.const 2876) ",")
 (data $27.1 (i32.const 2888) "\02\00\00\00\10\00\00\00v\00e\00r\00i\00f\00y\00T\00x")
 (data $28 (i32.const 2924) ",")
 (data $28.1 (i32.const 2936) "\02\00\00\00\18\00\00\00p\00r\00e\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $29 (i32.const 2972) "<")
 (data $29.1 (i32.const 2984) "\02\00\00\00\1e\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $30 (i32.const 3036) "<")
 (data $30.1 (i32.const 3048) "\02\00\00\00 \00\00\00p\00o\00s\00t\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $31 (i32.const 3100) ",")
 (data $31.1 (i32.const 3112) "\02\00\00\00\1a\00\00\00p\00o\00s\00t\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $32 (i32.const 3148) ",")
 (data $32.1 (i32.const 3160) "\02\00\00\00\18\00\00\00p\00o\00s\00t\00T\00x\00C\00o\00m\00m\00i\00t")
 (data $33 (i32.const 3196) "<")
 (data $33.1 (i32.const 3208) "\02\00\00\00\1e\00\00\00o\00n\00B\00l\00o\00c\00k\00F\00i\00n\00a\00l\00i\00z\00e")
 (data $34 (i32.const 3260) ",")
 (data $34.1 (i32.const 3272) "\02\00\00\00\12\00\00\00o\00p\00e\00r\00a\00t\00i\00o\00n")
 (data $35 (i32.const 3308) ",")
 (data $35.1 (i32.const 3320) "\02\00\00\00\0e\00\00\00i\00s\00O\00w\00n\00e\00r")
 (data $36 (i32.const 3356) ",")
 (data $36.1 (i32.const 3368) "\02\00\00\00\10\00\00\00f\00i\00l\00t\00e\00r\00T\00x")
 (data $37 (i32.const 3404) "<")
 (data $37.1 (i32.const 3416) "\02\00\00\00(\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00t\00r\00i\00n\00g\00D\00a\00t\00a")
 (data $38 (i32.const 3468) "<")
 (data $38.1 (i32.const 3480) "\02\00\00\00\"\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00I\00n\00t\00D\00a\00t\00a")
 (data $39 (i32.const 3532) "<")
 (data $39.1 (i32.const 3544) "\02\00\00\00$\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00o\00o\00l\00D\00a\00t\00a")
 (data $40 (i32.const 3596) "<")
 (data $40.1 (i32.const 3608) "\02\00\00\00&\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00y\00t\00e\00s\00D\00a\00t\00a")
 (data $41 (i32.const 3660) "L")
 (data $41.1 (i32.const 3672) "\02\00\00\002\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00a\00t\00e\00C\00h\00a\00n\00g\00e\00Q\00u\00e\00r\00y")
 (data $42 (i32.const 3740) "L")
 (data $42.1 (i32.const 3752) "\02\00\00\000\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00C\00a\00l\00l\00S\00t\00a\00c\00k\00Q\00u\00e\00r\00y")
 (data $43 (i32.const 3820) "|")
 (data $43.1 (i32.const 3832) "\02\00\00\00b\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00m\00o\00n\00/\00h\00e\00l\00p\00e\00r\00/\00m\00e\00s\00s\00a\00g\00e\00.\00t\00s")
 (data $44 (i32.const 3948) "|")
 (data $44.1 (i32.const 3960) "\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00r\00u\00n\00t\00i\00m\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $45 (i32.const 4076) "|")
 (data $45.1 (i32.const 4088) "\02\00\00\00h\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00a\00s\00p\00e\00c\00t\00-\00s\00t\00a\00t\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $46 (i32.const 4204) "\8c")
 (data $46.1 (i32.const 4216) "\02\00\00\00n\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00a\00s\00p\00e\00c\00t\00-\00p\00r\00o\00p\00e\00r\00t\00y\00-\00a\00p\00i\00.\00t\00s")
 (data $47 (i32.const 4348) "\9c")
 (data $47.1 (i32.const 4360) "\02\00\00\00\80\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00a\00s\00p\00e\00c\00t\00-\00t\00r\00a\00n\00s\00i\00e\00n\00t\00-\00s\00t\00o\00r\00a\00g\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $48 (i32.const 4508) "|")
 (data $48.1 (i32.const 4520) "\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00e\00v\00m\00-\00c\00a\00l\00l\00-\00a\00p\00i\00.\00t\00s")
 (data $49 (i32.const 4636) "|")
 (data $49.1 (i32.const 4648) "\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00s\00t\00a\00t\00e\00d\00b\00-\00a\00p\00i\00.\00t\00s")
 (data $50 (i32.const 4764) "l")
 (data $50.1 (i32.const 4776) "\02\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00u\00t\00i\00l\00-\00a\00p\00i\00.\00t\00s")
 (data $51 (i32.const 4876) "l")
 (data $51.1 (i32.const 4888) "\02\00\00\00Z\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00t\00r\00a\00c\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $52 (i32.const 4988) "\8c")
 (data $52.1 (i32.const 5000) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00s\00t\00a\00t\00e\00.\00t\00s")
 (data $53 (i32.const 5132) "\8c")
 (data $53.1 (i32.const 5144) "\02\00\00\00z\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00p\00r\00o\00p\00e\00r\00t\00y\00.\00t\00s")
 (data $54 (i32.const 5276) "\9c")
 (data $54.1 (i32.const 5288) "\02\00\00\00\8c\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00t\00r\00a\00n\00s\00i\00e\00n\00t\00-\00s\00t\00o\00r\00a\00g\00e\00.\00t\00s")
 (data $55 (i32.const 5436) ",")
 (data $55.1 (i32.const 5448) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $56 (i32.const 5484) "<")
 (data $56.1 (i32.const 5496) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $57 (i32.const 5548) "l")
 (data $57.1 (i32.const 5560) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00t\00y\00p\00e\00s\00/\00a\00s\00p\00e\00c\00t\00-\00e\00n\00t\00r\00y\00.\00t\00s")
 (data $58 (i32.const 5660) "L")
 (data $58.1 (i32.const 5672) "\02\00\00\002\00\00\00a\00s\00p\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data $59 (i32.const 5740) "\1c")
 (data $59.1 (i32.const 5752) ")\00\00\00\08\00\00\00\01")
 (data $60 (i32.const 5772) "<")
 (data $60.1 (i32.const 5784) "\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t")
 (data $61 (i32.const 5836) "\1c")
 (data $61.1 (i32.const 5848) "-\00\00\00\08\00\00\00\02")
 (data $62 (i32.const 5868) "\1c")
 (data $62.1 (i32.const 5880) "1\00\00\00\08\00\00\00\03")
 (data $63 (i32.const 5900) "\1c")
 (data $63.1 (i32.const 5912) "4\00\00\00\08\00\00\00\04")
 (data $64 (i32.const 5932) "\1c")
 (data $64.1 (i32.const 5944) "7\00\00\00\08\00\00\00\05")
 (data $65 (i32.const 5964) "\1c")
 (data $65.1 (i32.const 5976) ":\00\00\00\08\00\00\00\06")
 (data $66 (i32.const 5996) ",")
 (data $66.1 (i32.const 6008) "\02\00\00\00\0e\00\00\00m\00e\00t\00h\00o\00d\00 ")
 (data $67 (i32.const 6044) "L")
 (data $67.1 (i32.const 6056) "\02\00\00\00:\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data $68 (i32.const 6124) "l")
 (data $68.1 (i32.const 6136) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s")
 (data $69 (i32.const 6236) "<")
 (data $69.1 (i32.const 6248) "\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 ")
 (data $70 (i32.const 6300) "|")
 (data $70.1 (i32.const 6312) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $71 (i32.const 6428) "<")
 (data $71.1 (i32.const 6440) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $72 (i32.const 6492) "\1c")
 (data $72.1 (i32.const 6504) "\02\00\00\00\02\00\00\000")
 (data $73 (i32.const 6524) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $74 (i32.const 6924) "\1c\04")
 (data $74.1 (i32.const 6936) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $75 (i32.const 7980) "\\")
 (data $75.1 (i32.const 7992) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $76 (i32.const 8076) "\\")
 (data $76.1 (i32.const 8088) "\02\00\00\00H\00\00\00-\00-\00-\00r\00u\00n\00n\00i\00n\00g\00 \00j\00o\00i\00n\00p\00o\00i\00n\00t\00 \00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $77 (i32.const 8172) "<")
 (data $77.1 (i32.const 8184) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $78 (i32.const 8236) ",")
 (data $78.1 (i32.const 8248) "\02\00\00\00\1a\00\00\00u\00t\00i\00l\00s\00 \00h\00o\00s\00t\00a\00p\00i")
 (data $79 (i32.const 8284) "\1c")
 (data $79.1 (i32.const 8296) "\02\00\00\00\04\00\00\006\00A")
 (data $80 (i32.const 8316) "\1c")
 (data $80.1 (i32.const 8328) "\02\00\00\00\04\00\00\000\00x")
 (data $81 (i32.const 8348) "<")
 (data $81.1 (i32.const 8360) "\02\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data $82 (i32.const 8412) "l")
 (data $82.1 (i32.const 8424) "\02\00\00\00P\00\00\00h\00e\00x\00T\00o\00U\00i\00n\00t\008\00A\00r\00r\00a\00y\00 \00o\00r\00 \00u\00i\00n\00t\008\00A\00r\00r\00a\00y\00T\00o\00H\00e\00x\00 \00e\00r\00r\00o\00r")
 (data $83 (i32.const 8524) "<")
 (data $83.1 (i32.const 8536) "\02\00\00\00\1e\00\00\00s\00t\00a\00t\00e\00d\00b\00 \00h\00o\00s\00t\00a\00p\00i")
 (data $84 (i32.const 8588) "l")
 (data $84.1 (i32.const 8600) "\02\00\00\00T\00\00\000\00x\00E\002\00A\00F\007\00C\002\003\009\00b\004\00F\002\008\000\000\00a\002\00F\007\004\002\00d\004\000\006\006\002\008\00b\004\00f\00c\004\00b\008\00a\000\00d\004")
 (data $85 (i32.const 8700) "<")
 (data $85.1 (i32.const 8712) "\02\00\00\00\1e\00\00\00r\00u\00n\00t\00i\00m\00e\00 \00h\00o\00s\00t\00a\00p\00i")
 (data $86 (i32.const 8764) ",")
 (data $86.1 (i32.const 8776) "\02\00\00\00\10\00\00\00t\00x\00.\00b\00y\00t\00e\00s")
 (data $87 (i32.const 8812) "\1c")
 (data $87.1 (i32.const 8824) "=\00\00\00\08\00\00\00\07")
 (data $88 (i32.const 8844) "\1c")
 (data $88.1 (i32.const 8856) "\02\00\00\00\06\00\00\001\002\003")
 (data $89 (i32.const 8876) "\1c")
 (data $89.1 (i32.const 8888) "@\00\00\00\08\00\00\00\08")
 (data $90 (i32.const 8908) ",")
 (data $90.1 (i32.const 8920) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $91 (i32.const 8956) "\1c")
 (data $91.1 (i32.const 8968) "\02\00\00\00\06\00\00\00k\00e\00y")
 (data $92 (i32.const 8988) "\1c")
 (data $92.1 (i32.const 9000) "\02\00\00\00\08\00\00\00d\00a\00t\00a")
 (data $93 (i32.const 9020) "\8c")
 (data $93.1 (i32.const 9032) "\02\00\00\00x\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00c\00o\00n\00t\00e\00x\00t\00.\00t\00s")
 (data $94 (i32.const 9164) ",")
 (data $94.1 (i32.const 9176) "\02\00\00\00\12\00\00\00a\00s\00p\00e\00c\00t\00.\00i\00d")
 (data $95 (i32.const 9212) ",")
 (data $95.1 (i32.const 9224) "\02\00\00\00\1c\00\00\00a\00s\00p\00e\00c\00t\00.\00v\00e\00r\00s\00i\00o\00n")
 (data $96 (i32.const 9260) "\1c")
 (data $96.1 (i32.const 9272) "B\00\00\00\08\00\00\00\t")
 (data $97 (i32.const 9292) ",")
 (data $97.1 (i32.const 9304) "\02\00\00\00\1c\00\00\00c\00r\00y\00p\00t\00o\00 \00h\00o\00s\00t\00a\00p\00i")
 (data $98 (i32.const 9340) "\1c")
 (data $98.1 (i32.const 9352) "\02\00\00\00\08\00\00\00t\00e\00s\00t")
 (data $99 (i32.const 9372) "l")
 (data $99.1 (i32.const 9384) "\02\00\00\00T\00\00\000\00x\00B\00e\00d\007\00f\009\004\00D\00F\002\00B\008\00e\004\004\00A\009\006\003\00d\005\002\004\007\004\00E\002\00a\00B\00D\00E\000\005\00E\00d\002\00A\008\006\00c")
 (data $100 (i32.const 9484) ",")
 (data $100.1 (i32.const 9496) "\02\00\00\00\1a\00\00\00c\00a\00l\00l\00s\00 \00h\00o\00s\00t\00a\00p\00i")
 (data $101 (i32.const 9532) "\1c")
 (data $101.1 (i32.const 9544) "\02\00\00\00\08\00\00\00f\00r\00o\00m")
 (data $102 (i32.const 9564) ",")
 (data $102.1 (i32.const 9576) "\02\00\00\00\1a\00\00\00p\00r\00o\00p\00e\00r\00t\00y\00 \00f\00r\00o\00m")
 (data $103 (i32.const 9612) "\1c")
 (data $103.1 (i32.const 9624) "\02\00\00\00\04\00\00\00t\00o")
 (data $104 (i32.const 9644) ",")
 (data $104.1 (i32.const 9656) "\02\00\00\00\16\00\00\00p\00r\00o\00p\00e\00r\00t\00y\00 \00t\00o")
 (data $105 (i32.const 9692) ",")
 (data $105.1 (i32.const 9704) "\02\00\00\00\1a\00\00\00p\00r\00o\00p\00e\00r\00t\00y\00 \00d\00a\00t\00a")
 (data $106 (i32.const 9740) "\1c")
 (data $106.1 (i32.const 9752) "E\00\00\00\08\00\00\00\n")
 (data $107 (i32.const 9772) "\1c")
 (data $107.1 (i32.const 9784) "F\00\00\00\08\00\00\00\0b")
 (data $108 (i32.const 9804) "L")
 (data $108.1 (i32.const 9816) "\02\00\00\002\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00.\00t\00s")
 (data $109 (i32.const 9884) ",")
 (data $109.1 (i32.const 9896) "\02\00\00\00\14\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00(\00)")
 (data $110 (i32.const 9932) ",")
 (data $110.1 (i32.const 9944) "\02\00\00\00\1c\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00F\00r\00o\00m\00(\00)")
 (data $111 (i32.const 9980) "\1c")
 (data $111.1 (i32.const 9992) "I\00\00\00\08\00\00\00\0c")
 (data $112 (i32.const 10012) "\1c")
 (data $112.1 (i32.const 10024) "\01")
 (data $113 (i32.const 10044) "\1c")
 (data $113.1 (i32.const 10056) "N\00\00\00\08\00\00\00\r")
 (data $114 (i32.const 10076) "<")
 (data $114.1 (i32.const 10088) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $115 (i32.const 10140) ",")
 (data $115.1 (i32.const 10152) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $116 (i32.const 10192) "O\00\00\00 \00\00\00 \00\00\00 ")
 (data $116.1 (i32.const 10216) " \00\00\00\00\00\00\00\02\01\00\00\02\t\00\00A\00\00\00\00\00\00\00 ")
 (data $116.2 (i32.const 10252) " \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 ")
 (data $116.3 (i32.const 10356) " \00\00\00\00\00\00\00 ")
 (data $116.4 (i32.const 10380) " ")
 (data $116.5 (i32.const 10412) " \00\00\00\00\00\00\00 ")
 (data $116.6 (i32.const 10456) " ")
 (data $116.7 (i32.const 10480) "\02A\00\00 ")
 (data $116.8 (i32.const 10500) "\02\02\00\00\10A\04")
 (table $0 14 14 funcref)
 (elem $0 (i32.const 1) $~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/pre-tx-execute-input/PreTxExecuteInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/pre-contract-call-input/PreContractCallInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/post-contract-call-input/PostContractCallInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/post-tx-execute-input/PostTxExecuteInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/operation-input/OperationInput.decode $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/uint-data/UintData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/static-call-request/StaticCallRequest.encode $~lib/@artela/aspect-libs/proto/aspect/v2/static-call-result/StaticCallResult.decode $~lib/@artela/aspect-libs/proto/aspect/v2/call-tree-query/CallTreeQuery.encode $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-tree/EthCallTree.decode)
 (export "execute" (func $~lib/@artela/aspect-libs/types/entrance/execute))
 (export "allocate" (func $~lib/@artela/aspect-libs/types/entrance/allocate))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$1198
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 43280
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$1198
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 10192
   i32.load
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 10196
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 43280
  i32.const 0
  i32.store
  i32.const 44848
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 43280
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 43280
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 43280
  i32.const 44852
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 43280
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 43280
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 43280
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 43280
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.const 27
     local.get $3
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $3
    end
   else
    local.get $3
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$68
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$68
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $3
   i32.eqz
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $start:~lib/as-proto/assembly/index
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   memory.size
   i32.const 16
   i32.shl
   i32.const 43280
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1172
   i32.const 1168
   i32.store
   i32.const 1176
   i32.const 1168
   i32.store
   i32.const 1168
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/toSpace
   i32.const 1348
   i32.const 1344
   i32.store
   i32.const 1352
   i32.const 1344
   i32.store
   i32.const 1344
   global.set $~lib/rt/itcms/fromSpace
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 32
   memory.fill
   local.get $0
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/as-proto/assembly/Writer/Writer#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/as-proto/assembly/Writer/Writer#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   i32.const 0
   i32.const 2
   i32.const 7
   i32.const 1456
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   i32.const 0
   i32.const 2
   i32.const 8
   i32.const 1488
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $2
   local.get $3
   i32.store offset=8
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   i32.const 0
   i32.const 2
   i32.const 8
   i32.const 1520
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $2
   local.get $3
   i32.store offset=12
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $2
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.load offset=4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/as-proto/assembly/Protobuf/WRITER
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    local.get $3
    i32.const 8
    i32.const 11
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.load offset=4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $2
   local.get $1
   i32.load offset=8
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/as-proto/assembly/Protobuf/READER
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:~lib/@artela/aspect-libs/package
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 19
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4528
    i32.const 117
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 21
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4656
    i32.const 95
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.util
   call $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.aspectState
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
   call $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.aspectTransientStorage
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 17
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4896
    i32.const 19
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.trace
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 27
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 5008
    i32.const 20
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.aspect.mutableState
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 28
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 5008
    i32.const 37
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.aspect.readonlyState
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 29
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 5152
    i32.const 19
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.aspect.property
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 30
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 5296
    i32.const 20
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/package/sys.aspect.transientStorage
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/types/entrance/allocate (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$97
   local.get $0
   i32.eqz
   if
    local.get $1
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 6512
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$97
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   select
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 6524
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 6524
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 6524
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 6524
    i32.add
    i32.load
    i32.store
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $2
       i32.const 56320
       i32.lt_u
       local.get $0
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
       i32.and
       if
        local.get $0
        i32.load16_u offset=2
        local.tee $4
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $1
         local.get $2
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.const 65536
         i32.add
         local.get $4
         i32.const 1023
         i32.and
         i32.or
         local.tee $2
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 24
         i32.shl
         local.get $2
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 16
         i32.shl
         i32.or
         local.get $2
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         i32.const 8
         i32.shl
         i32.or
         local.get $2
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         i32.or
         i32.store
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32@override (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   if
    i32.const 43312
    i32.const 43360
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes@override (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   if
    i32.const 43312
    i32.const 43360
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   local.get $5
   local.get $0
   i32.load
   i32.add
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.load offset=4
   i32.gt_u
   if
    i32.const 1248
    i32.const 6144
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   local.get $5
   memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType@override (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 10
  i32.eq
  if
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint64@override (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   if
    i32.const 43312
    i32.const 43360
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string@override (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   if
    i32.const 43312
    i32.const 43360
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   local.get $2
   local.get $0
   i32.load
   i32.add
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load offset=4
   i32.gt_u
   if
    i32.const 1248
    i32.const 6144
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $2
   call $~lib/string/String.UTF8.decodeUnsafe
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i32.const 0
     i32.store offset=8
     local.get $2
     local.get $0
     i32.store
     loop $while-continue|0
      local.get $1
      i32.const 127
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store offset=4
       local.get $2
       local.get $0
       i32.store offset=8
       local.get $0
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 1
       i32.add
       i32.store offset=4
       local.get $2
       local.get $1
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $1
       i32.const 7
       i32.shr_u
       local.set $1
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $0
     local.get $1
     i32.store8
     local.get $2
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store
    local.get $2
    i32.const 0
    i32.store offset=8
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $1
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $1
      i32.const 2097152
      i32.lt_u
      if (result i32)
       i32.const 3
      else
       i32.const 4
       i32.const 5
       local.get $1
       i32.const 268435456
       i32.lt_u
       select
      end
     end
    end
    local.get $0
    i32.load
    i32.add
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bytes@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i64.const 0
     i64.store offset=8
     local.get $3
     local.get $0
     i32.store
     local.get $3
     local.get $1
     i32.store offset=4
     local.get $1
     i32.load offset=8
     local.set $2
     local.get $3
     local.get $0
     i32.store offset=8
     loop $while-continue|0
      local.get $2
      i32.const 127
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $0
       i32.store offset=4
       local.get $3
       local.get $0
       i32.store offset=12
       local.get $0
       local.get $0
       i32.load offset=4
       local.tee $3
       i32.const 1
       i32.add
       i32.store offset=4
       local.get $3
       local.get $2
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $2
       i32.const 7
       i32.shr_u
       local.set $2
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.store offset=12
     local.get $0
     local.get $0
     i32.load offset=4
     local.tee $4
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $4
     local.get $2
     i32.store8
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=4
     local.set $2
     local.get $3
     local.get $1
     i32.store offset=4
     local.get $1
     i32.load offset=4
     local.set $4
     local.get $3
     local.get $1
     i32.store offset=4
     local.get $2
     local.get $4
     local.get $1
     i32.load offset=8
     memory.copy
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.store offset=12
     local.get $0
     i32.load offset=4
     local.set $2
     local.get $3
     local.get $1
     i32.store offset=12
     local.get $0
     local.get $2
     local.get $1
     i32.load offset=8
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store
    local.get $2
    i64.const 0
    i64.store offset=8
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.load offset=8
    local.set $3
    local.get $2
    local.get $0
    i32.store offset=8
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.store offset=12
    local.get $0
    local.get $3
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $3
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $3
      i32.const 2097152
      i32.lt_u
      if (result i32)
       i32.const 3
      else
       i32.const 4
       i32.const 5
       local.get $3
       i32.const 268435456
       i32.lt_u
       select
      end
     end
    end
    local.get $0
    i32.load
    i32.add
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.store offset=12
    local.get $0
    i32.load
    local.set $3
    local.get $2
    local.get $1
    i32.store offset=12
    local.get $0
    local.get $3
    local.get $1
    i32.load offset=8
    i32.add
    i32.store
    local.get $2
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint64@override (param $0 i32) (param $1 i64)
  (local $2 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i32.const 0
     i32.store offset=8
     local.get $2
     local.get $0
     i32.store
     loop $while-continue|0
      local.get $1
      i64.const 127
      i64.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store offset=4
       local.get $2
       local.get $0
       i32.store offset=8
       local.get $0
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 1
       i32.add
       i32.store offset=4
       local.get $2
       local.get $1
       i64.const 127
       i64.and
       i64.const 128
       i64.or
       i64.store8
       local.get $1
       i64.const 7
       i64.shr_u
       local.set $1
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $0
     local.get $1
     i64.store8
     local.get $2
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store
    local.get $2
    i32.const 0
    i32.store offset=8
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $1
    i64.const 128
    i64.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i64.const 16384
     i64.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $1
      i64.const 2097152
      i64.lt_u
      if (result i32)
       i32.const 3
      else
       local.get $1
       i64.const 268435456
       i64.lt_u
       if (result i32)
        i32.const 4
       else
        local.get $1
        i64.const 17179869184
        i64.lt_u
        if (result i32)
         i32.const 5
        else
         local.get $1
         i64.const 2199023255552
         i64.lt_u
         if (result i32)
          i32.const 6
         else
          local.get $1
          i64.const 281474976710656
          i64.lt_u
          if (result i32)
           i32.const 7
          else
           local.get $1
           i64.const 36028797018963968
           i64.lt_u
           if (result i32)
            i32.const 8
           else
            i32.const 9
            i32.const 10
            local.get $1
            i64.const 4611686018427387904
            i64.lt_u
            select
           end
          end
         end
        end
       end
      end
     end
    end
    local.get $0
    i32.load
    i32.add
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__visit_globals
  (local $0 i32)
  global.get $assembly/index/aspect
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 1552
  call $~lib/rt/itcms/__visit
  i32.const 10096
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 8192
  call $~lib/rt/itcms/__visit
  i32.const 6944
  call $~lib/rt/itcms/__visit
  i32.const 8000
  call $~lib/rt/itcms/__visit
  global.get $assembly/aspect/aspect/aspect
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 2784
  call $~lib/rt/itcms/__visit
  i32.const 2832
  call $~lib/rt/itcms/__visit
  i32.const 2896
  call $~lib/rt/itcms/__visit
  i32.const 2944
  call $~lib/rt/itcms/__visit
  i32.const 2992
  call $~lib/rt/itcms/__visit
  i32.const 3056
  call $~lib/rt/itcms/__visit
  i32.const 3120
  call $~lib/rt/itcms/__visit
  i32.const 3168
  call $~lib/rt/itcms/__visit
  i32.const 3216
  call $~lib/rt/itcms/__visit
  i32.const 3280
  call $~lib/rt/itcms/__visit
  i32.const 3328
  call $~lib/rt/itcms/__visit
  i32.const 3376
  call $~lib/rt/itcms/__visit
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.util
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectTransientStorage
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.trace
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.mutableState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.readonlyState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.property
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.transientStorage
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/entrance/entryPoint
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 2624
  call $~lib/rt/itcms/__visit
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadRuntimeCtxValue
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectProperty
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectContext
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrUpdateAspectState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrParseValueFail
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/NotAuthorizedFail
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContextApi
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/stateApi
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-property/propertyApi
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/transientStorageApi
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner11
   block $folding-inner10
    block $folding-inner9
     block $folding-inner8
      block $folding-inner7
       block $folding-inner6
        block $folding-inner5
         block $folding-inner4
          block $folding-inner3
           block $folding-inner2
            block $folding-inner1
             block $invalid
              block $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>
               block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage
                block $~lib/@artela/aspect-libs/proto/aspect/v2/call-tree-query/CallTreeQuery
                 block $~lib/array/Array<~lib/string/String>
                  block $~lib/@artela/aspect-libs/proto/aspect/v2/uint-data/UintData
                   block $~lib/@artela/aspect-libs/types/aspect-interface/IPostTxExecuteJP
                    block $~lib/@artela/aspect-libs/proto/aspect/v2/receipt-input/ReceiptInput
                     block $~lib/@artela/aspect-libs/proto/aspect/v2/post-exec-message-input/PostExecMessageInput
                      block $~lib/@artela/aspect-libs/proto/aspect/v2/pre-exec-message-input/PreExecMessageInput
                       block $~lib/@artela/aspect-libs/types/aspect-interface/IPreTxExecuteJP
                        block $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier
                         block $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput
                          block $~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput
                           block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header
                            block $~lib/@artela/aspect-libs/types/aspect-interface/IPostContractCallJP
                             block $~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP
                              block $assembly/aspect/aspect/StressTestAspect
                               block $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage
                                block $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty
                                 block $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState
                                  block $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState
                                   block $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext
                                    block $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation
                                     block $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBase
                                      block $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi
                                       block $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi
                                        block $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi
                                         block $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi
                                          block $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi
                                           block $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi
                                            block $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi
                                             block $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi
                                              block $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi
                                               block $~lib/@artela/aspect-libs/common/helper/message/MessageUtil
                                                block $~lib/as-proto/assembly/Reader/Reader
                                                 block $~lib/as-proto/assembly/Writer/Writer
                                                  block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter
                                                   block $~lib/string/String
                                                    block $~lib/arraybuffer/ArrayBuffer
                                                     block $~lib/object/Object
                                                      local.get $0
                                                      i32.const 8
                                                      i32.sub
                                                      i32.load
                                                      br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner1 $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter $~lib/as-proto/assembly/Writer/Writer $folding-inner2 $folding-inner3 $folding-inner3 $folding-inner1 $folding-inner8 $~lib/as-proto/assembly/Reader/Reader $~lib/@artela/aspect-libs/common/helper/message/MessageUtil $folding-inner5 $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi $~lib/@artela/aspect-libs/hostapi/trace-api/TraceApi $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi $folding-inner6 $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBase $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState $~lib/@artela/aspect-libs/components/aspect/aspect-property/AspectProperty $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/TransientStorage $assembly/aspect/aspect/StressTestAspect $~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP $~lib/@artela/aspect-libs/types/aspect-interface/IPostContractCallJP $folding-inner6 $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header $folding-inner6 $folding-inner1 $~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput $folding-inner6 $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput $folding-inner7 $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier $folding-inner6 $folding-inner5 $folding-inner7 $~lib/@artela/aspect-libs/types/aspect-interface/IPreTxExecuteJP $folding-inner6 $~lib/@artela/aspect-libs/proto/aspect/v2/pre-exec-message-input/PreExecMessageInput $folding-inner7 $folding-inner6 $~lib/@artela/aspect-libs/proto/aspect/v2/post-exec-message-input/PostExecMessageInput $folding-inner7 $folding-inner5 $~lib/@artela/aspect-libs/proto/aspect/v2/receipt-input/ReceiptInput $folding-inner7 $~lib/@artela/aspect-libs/types/aspect-interface/IPostTxExecuteJP $folding-inner5 $folding-inner7 $folding-inner1 $folding-inner1 $folding-inner7 $folding-inner1 $folding-inner6 $folding-inner7 $~lib/@artela/aspect-libs/proto/aspect/v2/uint-data/UintData $folding-inner7 $folding-inner5 $folding-inner6 $folding-inner7 $folding-inner7 $~lib/array/Array<~lib/string/String> $~lib/@artela/aspect-libs/proto/aspect/v2/call-tree-query/CallTreeQuery $folding-inner7 $folding-inner1 $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage $folding-inner3 $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage> $folding-inner7 $invalid
                                                     end
                                                     return
                                                    end
                                                    return
                                                   end
                                                   return
                                                  end
                                                  local.get $0
                                                  i32.load
                                                  local.tee $1
                                                  if
                                                   local.get $1
                                                   call $~lib/rt/itcms/__visit
                                                  end
                                                  br $folding-inner8
                                                 end
                                                 return
                                                end
                                                return
                                               end
                                               local.get $0
                                               i32.load
                                               local.tee $1
                                               if
                                                local.get $1
                                                call $~lib/rt/itcms/__visit
                                               end
                                               local.get $0
                                               i32.load offset=4
                                               local.tee $1
                                               if
                                                local.get $1
                                                call $~lib/rt/itcms/__visit
                                               end
                                               local.get $0
                                               i32.load offset=8
                                               local.tee $1
                                               if
                                                local.get $1
                                                call $~lib/rt/itcms/__visit
                                               end
                                               local.get $0
                                               i32.load offset=12
                                               local.tee $1
                                               if
                                                local.get $1
                                                call $~lib/rt/itcms/__visit
                                               end
                                               br $folding-inner4
                                              end
                                              return
                                             end
                                             return
                                            end
                                            return
                                           end
                                           return
                                          end
                                          return
                                         end
                                         return
                                        end
                                        return
                                       end
                                       return
                                      end
                                      return
                                     end
                                     return
                                    end
                                    return
                                   end
                                   return
                                  end
                                  return
                                 end
                                 return
                                end
                                return
                               end
                               return
                              end
                              return
                             end
                             return
                            end
                            return
                           end
                           return
                          end
                          local.get $0
                          i32.load
                          local.tee $1
                          if
                           local.get $1
                           call $~lib/rt/itcms/__visit
                          end
                          br $folding-inner2
                         end
                         return
                        end
                        return
                       end
                       return
                      end
                      local.get $0
                      i32.load
                      local.tee $1
                      if
                       local.get $1
                       call $~lib/rt/itcms/__visit
                      end
                      local.get $0
                      i32.load offset=4
                      local.tee $1
                      if
                       local.get $1
                       call $~lib/rt/itcms/__visit
                      end
                      br $folding-inner4
                     end
                     local.get $0
                     i32.load
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=4
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=16
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=20
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=32
                     local.tee $1
                     if
                      local.get $1
                      call $~lib/rt/itcms/__visit
                     end
                     local.get $0
                     i32.load offset=36
                     local.tee $0
                     if
                      local.get $0
                      call $~lib/rt/itcms/__visit
                     end
                     return
                    end
                    return
                   end
                   return
                  end
                  return
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 4
                 i32.sub
                 global.set $~lib/memory/__stack_pointer
                 global.get $~lib/memory/__stack_pointer
                 i32.const 10512
                 i32.lt_s
                 br_if $folding-inner9
                 global.get $~lib/memory/__stack_pointer
                 local.tee $2
                 i32.const 0
                 i32.store
                 local.get $2
                 local.get $0
                 i32.store
                 local.get $0
                 i32.load offset=4
                 local.set $1
                 local.get $2
                 local.get $0
                 i32.store
                 local.get $1
                 local.get $0
                 i32.load offset=12
                 i32.const 2
                 i32.shl
                 i32.add
                 local.set $2
                 loop $while-continue|0
                  local.get $1
                  local.get $2
                  i32.lt_u
                  if
                   local.get $1
                   i32.load
                   local.tee $3
                   if
                    local.get $3
                    call $~lib/rt/itcms/__visit
                   end
                   local.get $1
                   i32.const 4
                   i32.add
                   local.set $1
                   br $while-continue|0
                  end
                 end
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store
                 br $folding-inner10
                end
                return
               end
               local.get $0
               i32.load
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=4
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=8
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=24
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=28
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=40
               local.tee $1
               if
                local.get $1
                call $~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load offset=64
               local.tee $0
               if
                local.get $0
                call $~lib/rt/itcms/__visit
               end
               return
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 10512
              i32.lt_s
              br_if $folding-inner9
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              i32.const 0
              i32.store
              local.get $1
              local.get $0
              i32.store
              local.get $0
              i32.load
              call $~lib/rt/itcms/__visit
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store
              local.get $0
              i32.load offset=8
              local.tee $2
              local.set $1
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store
              local.get $1
              local.get $0
              i32.load offset=16
              i32.const 4
              i32.shl
              i32.add
              local.set $0
              loop $while-continue|01
               local.get $0
               local.get $1
               i32.gt_u
               if
                local.get $1
                i32.load offset=12
                i32.const 1
                i32.and
                i32.eqz
                if
                 local.get $1
                 i32.load offset=8
                 call $~lib/rt/itcms/__visit
                end
                local.get $1
                i32.const 16
                i32.add
                local.set $1
                br $while-continue|01
               end
              end
              local.get $2
              call $~lib/rt/itcms/__visit
              br $folding-inner11
             end
             unreachable
            end
            local.get $0
            i32.load
            local.tee $0
            if
             local.get $0
             call $~lib/rt/itcms/__visit
            end
            return
           end
           local.get $0
           i32.load offset=4
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=8
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=12
           local.tee $0
           if
            local.get $0
            call $~lib/rt/itcms/__visit
           end
           return
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 10512
          i32.lt_s
          br_if $folding-inner9
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          i32.const 0
          i32.store
          local.get $1
          local.get $0
          i32.store
          br $folding-inner10
         end
         local.get $0
         i32.load offset=16
         local.tee $1
         if
          local.get $1
          call $~lib/rt/itcms/__visit
         end
         local.get $0
         i32.load offset=20
         local.tee $0
         if
          local.get $0
          call $~lib/rt/itcms/__visit
         end
         return
        end
        local.get $0
        i32.load
        local.tee $1
        if
         local.get $1
         call $~lib/rt/itcms/__visit
        end
        local.get $0
        i32.load offset=4
        local.tee $1
        if
         local.get $1
         call $~lib/rt/itcms/__visit
        end
        local.get $0
        i32.load offset=8
        local.tee $0
        if
         local.get $0
         call $~lib/rt/itcms/__visit
        end
        return
       end
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $~lib/rt/itcms/__visit
       end
       local.get $0
       i32.load offset=4
       local.tee $0
       if
        local.get $0
        call $~lib/rt/itcms/__visit
       end
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 10512
      i32.lt_s
      br_if $folding-inner9
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i32.const 0
      i32.store
      local.get $1
      local.get $0
      i32.store
      local.get $0
      i32.load offset=4
      call $~lib/rt/itcms/__visit
      br $folding-inner11
     end
     local.get $0
     i32.load offset=8
     local.tee $0
     if
      local.get $0
      call $~lib/rt/itcms/__visit
     end
     return
    end
    i32.const 43312
    i32.const 43360
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   call $start:~lib/as-proto/assembly/index
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 1728
   i32.store
   i32.const 1728
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadRuntimeCtxValue
   global.get $~lib/memory/__stack_pointer
   i32.const 1824
   i32.store
   i32.const 1824
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectProperty
   global.get $~lib/memory/__stack_pointer
   i32.const 1904
   i32.store
   i32.const 1904
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectContext
   global.get $~lib/memory/__stack_pointer
   i32.const 1984
   i32.store
   i32.const 1984
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectState
   global.get $~lib/memory/__stack_pointer
   i32.const 2080
   i32.store
   i32.const 2080
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrUpdateAspectState
   global.get $~lib/memory/__stack_pointer
   i32.const 2176
   i32.store
   i32.const 2176
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/ErrParseValueFail
   global.get $~lib/memory/__stack_pointer
   i32.const 2256
   i32.store
   i32.const 2256
   call $~lib/error/Error#constructor
   global.set $~lib/@artela/aspect-libs/common/errors/NotAuthorizedFail
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance
   global.set $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
   global.set $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 8
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/@artela/aspect-libs/types/entrance/entryPoint
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContextApi
   call $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/stateApi
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-property/propertyApi
   call $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-transient-storage/transientStorageApi
   call $start:~lib/@artela/aspect-libs/package
   call $assembly/aspect/aspect/StressTestAspect#constructor
   global.set $assembly/aspect/aspect/aspect
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $~lib/@artela/aspect-libs/types/entrance/entryPoint
   local.tee $1
   i32.store
   local.get $0
   global.get $assembly/aspect/aspect/aspect
   local.tee $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#setAspect
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   call $assembly/aspect/aspect/StressTestAspect#constructor
   global.set $assembly/index/aspect
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/types/entrance/entryPoint
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/aspect
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#setAspect
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.eqz
   if
    local.get $3
    i32.const 12
    i32.const 3
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1552
    i32.const 1600
    i32.const 19
    i32.const 57
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $1
   local.get $3
   i32.store
   local.get $1
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/error/Error#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 12
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  i32.store offset=8
  local.get $1
  i32.const 1664
  i32.store
  local.get $1
  i32.const 1664
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $1
  i32.const 1696
  i32.store offset=4
  local.get $1
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/aspect/aspect/StressTestAspect#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.const 31
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#setAspect (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 8
  i32.const 35
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store16
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store16
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $3
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i32.const 8
  i32.const 34
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $0
      i32.const 2
      i32.add
      local.get $2
      i32.lt_u
      i32.and
      if
       local.get $0
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 10
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store
  local.get $4
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.load16_s
  i32.store16
  local.get $2
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.load offset=2
  i32.store offset=4
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $2
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   local.get $2
   local.get $0
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   block $__inlined_func$~lib/util/string/compareImpl (result i32)
    local.get $0
    local.set $2
    local.get $3
    local.tee $0
    i32.const 4
    i32.ge_u
    if (result i32)
     local.get $2
     i32.const 7
     i32.and
     local.get $1
     i32.const 7
     i32.and
     i32.or
    else
     i32.const 1
    end
    i32.eqz
    if
     loop $do-loop|0
      local.get $2
      i64.load
      local.get $1
      i64.load
      i64.eq
      if
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       local.get $0
       i32.const 4
       i32.sub
       local.tee $0
       i32.const 4
       i32.ge_u
       br_if $do-loop|0
      end
     end
    end
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $1
      i32.load16_u
      local.tee $3
      local.get $2
      i32.load16_u
      local.tee $4
      i32.ne
      if
       local.get $4
       local.get $3
       i32.sub
       br $__inlined_func$~lib/util/string/compareImpl
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 8
  i32.const 36
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  i32.const 11
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1248
   i32.const 5504
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  local.get $0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  i32.store
  local.get $1
  i32.const 6
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store offset=8
  local.get $1
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  i32.const 0
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $1
   local.get $3
   i32.load offset=4
   i32.lt_s
   if
    local.get $4
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    local.tee $3
    i32.store
    local.get $3
    local.get $1
    local.get $2
    i32.load8_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load16_s
  i32.extend16_s
  i32.store16
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.store offset=2
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 5
   i32.const 37
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   i32.const 9
   i32.const 1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $1
   i32.store
   local.get $1
   i32.const 1
   i32.store8 offset=4
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.const 1
   i32.store offset=4
   local.get $0
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $2
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.load
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $2
   i32.const 6
   i32.add
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.load
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.load8_u offset=4
   i32.const 0
   i32.ne
   i32.store8 offset=6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/no-from-tx-input/NoFromTxInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/no-from-tx-input/NoFromTxInput#constructor@varargs$7 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 20
     memory.fill
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i32.const 0
     i32.store offset=8
     local.get $4
     local.get $2
     i32.store offset=12
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $4
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i32.const 0
     i32.store offset=8
     local.get $4
     i32.const 8
     i32.const 39
     call $~lib/rt/itcms/__new
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.store
     local.get $4
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $4
     local.get $2
     i32.store
     local.get $4
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $4
     local.get $3
     i32.store offset=4
     local.get $4
     local.get $3
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/no-from-tx-input/NoFromTxInput#constructor@varargs$7
    end
    br $folding-inner1
   end
   local.tee $2
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.store
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $3
       i32.const 3
       i32.shr_u
       local.tee $4
       i32.const 1
       i32.ne
       if
        local.get $4
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $2
       i32.store
       local.get $3
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $2
       local.get $3
       i32.store
       local.get $2
       local.get $3
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store
      local.get $3
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $2
      local.get $3
      i32.store offset=4
      local.get $2
      local.get $3
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 8
   i32.const 40
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store
   local.get $1
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     local.get $0
     call $~lib/as-proto/assembly/Reader/Reader#uint32@override
     local.tee $1
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $4
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      i64.store
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   local.get $2
   i32.store offset=20
   local.get $5
   local.get $3
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 16
   i32.const 38
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.store
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $5
   i32.const 0
   i32.store offset=4
   local.get $5
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $5
   local.get $2
   i32.store offset=8
   local.get $5
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $5
   local.get $3
   i32.store offset=12
   local.get $5
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $2
     local.get $0
     i32.store
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $case0|1
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          local.tee $2
          i32.const 3
          i32.shr_u
          i32.const 1
          i32.sub
          br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $5
         i32.store
         local.get $2
         local.get $0
         i32.store offset=12
         local.get $2
         local.get $0
         i32.store offset=16
         local.get $0
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         call $~lib/@artela/aspect-libs/proto/aspect/v2/no-from-tx-input/NoFromTxInput.decode
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=8
         local.get $5
         local.get $2
         i32.store
         local.get $5
         local.get $2
         i32.const 0
         call $~lib/rt/itcms/__link
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $5
        i32.store
        local.get $2
        local.get $0
        i32.store offset=12
        local.get $2
        local.get $0
        i32.store offset=16
        local.get $0
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#uint32@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $5
        local.get $2
        i32.store offset=4
        local.get $5
        local.get $2
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $5
       i32.store
       local.get $2
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       local.get $5
       local.get $2
       i32.store offset=8
       local.get $5
       local.get $2
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $5
      i32.store
      local.get $2
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $5
      local.get $2
      i32.store offset=12
      local.get $5
      local.get $2
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   block $__inlined_func$~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>$9 (result i32)
    local.get $3
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     global.get $~lib/as-proto/assembly/Protobuf/READER
     local.tee $3
     i32.store
     local.get $4
     local.get $0
     i32.store offset=4
     local.get $4
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     local.get $3
     i32.store
     local.get $4
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.load offset=4
     i32.store
     local.get $4
     local.get $3
     i32.store
     local.get $4
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=4
     local.set $5
     local.get $4
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $5
     local.get $0
     i32.load offset=8
     i32.add
     i32.store offset=4
     local.get $4
     local.get $3
     i32.store
     local.get $4
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.store offset=8
     local.get $3
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/as-proto/assembly/Protobuf/READER
     local.tee $0
     i32.store
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     i32.load
     call_indirect (type $1)
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     br $__inlined_func$~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>$9
    end
    br $folding-inner1
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1248
   i32.const 5504
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  i32.load offset=4
  local.set $3
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  i32.store
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $3
  i32.const 6
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  i32.store
  local.get $3
  i32.const 6
  i32.add
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load
   local.tee $5
   i32.store
   local.get $2
   local.get $5
   i32.load offset=4
   i32.lt_s
   if
    local.get $4
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    local.tee $4
    i32.store
    local.get $1
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput#constructor@varargs$10 (result i32)
    local.get $2
    i32.const 28
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 28
     memory.fill
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $4
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i32.const 0
     i32.store offset=12
     local.get $5
     local.get $2
     i32.store offset=16
     local.get $5
     local.get $3
     i32.store offset=20
     local.get $5
     local.get $4
     i32.store offset=24
     local.get $5
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i64.const 0
     i64.store
     local.get $5
     i32.const 0
     i32.store offset=8
     local.get $5
     i32.const 12
     i32.const 44
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.const 0
     i32.store
     local.get $5
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.const 0
     i32.store offset=4
     local.get $5
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     i32.const 0
     i32.store offset=8
     local.get $5
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $5
     local.get $2
     i32.store
     local.get $5
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $5
     local.get $3
     i32.store offset=4
     local.get $5
     local.get $3
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     local.get $5
     local.get $4
     i32.store offset=8
     local.get $5
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 28
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput#constructor@varargs$10
    end
    br $folding-inner1
   end
   local.tee $2
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.store
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         local.tee $3
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $2
        i32.store
        local.get $3
        local.get $0
        i32.store offset=12
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $2
        local.get $3
        i32.store
        local.get $2
        local.get $3
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $2
       i32.store
       local.get $3
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $2
       local.get $3
       i32.store offset=4
       local.get $2
       local.get $3
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store
      local.get $3
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $2
      local.get $3
      i32.store offset=8
      local.get $2
      local.get $3
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/pre-tx-execute-input/PreTxExecuteInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 8
   i32.const 43
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $4
       i32.const 3
       i32.shr_u
       local.tee $1
       i32.const 1
       i32.ne
       if
        local.get $1
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $3
       i32.store
       local.get $1
       local.get $0
       i32.store offset=12
       local.get $1
       local.get $0
       i32.store offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput.decode
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $3
       local.get $1
       i32.store
       local.get $3
       local.get $1
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $3
      i32.store
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $1
      local.get $0
      i32.store offset=16
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $3
      local.get $1
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/pre-exec-message-input/PreExecMessageInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $3
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 36
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 36
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i32.const 0
   i32.store offset=16
   local.get $7
   local.get $6
   i32.store offset=20
   local.get $7
   local.get $1
   i32.store offset=24
   local.get $7
   local.get $4
   i32.store offset=28
   local.get $7
   local.get $5
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i64.const 0
   i64.store
   local.get $7
   i32.const 0
   i32.store offset=8
   local.get $7
   i32.const 32
   i32.const 48
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store
   local.get $7
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=16
   local.get $7
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=20
   local.get $7
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i64.const 0
   i64.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=8
   local.get $7
   local.get $6
   i32.store
   local.get $7
   local.get $6
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $7
   local.get $1
   i32.store offset=4
   local.get $7
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $7
   local.get $4
   i32.store offset=16
   local.get $7
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $7
   local.get $5
   i32.store offset=20
   local.get $7
   local.get $5
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i64.const 0
   i64.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $7
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     block $case6|1
      block $case5|1
       block $case4|1
        block $case3|1
         block $case2|1
          block $case1|1
           block $case0|1
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#uint32@override
            local.tee $1
            i32.const 3
            i32.shr_u
            i32.const 1
            i32.sub
            br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $7
           i32.store
           local.get $1
           local.get $0
           i32.store offset=12
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#bytes@override
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store offset=8
           local.get $7
           local.get $1
           i32.store
           local.get $7
           local.get $1
           i32.const 0
           call $~lib/rt/itcms/__link
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $7
          i32.store
          local.get $1
          local.get $0
          i32.store offset=12
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store offset=8
          local.get $7
          local.get $1
          i32.store offset=4
          local.get $7
          local.get $1
          i32.const 0
          call $~lib/rt/itcms/__link
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $7
         i32.store
         local.get $1
         local.get $0
         i32.store offset=8
         local.get $7
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint64@override
         i64.store offset=8
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $7
        i32.store
        local.get $1
        local.get $0
        i32.store offset=12
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        local.get $7
        local.get $1
        i32.store offset=16
        local.get $7
        local.get $1
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $7
       i32.store
       local.get $1
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $7
       local.get $1
       i32.store offset=20
       local.get $7
       local.get $1
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $7
      i32.store
      local.get $1
      local.get $0
      i32.store offset=8
      local.get $7
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      i64.store offset=24
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/pre-contract-call-input/PreContractCallInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 8
   i32.const 47
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $4
       i32.const 3
       i32.shr_u
       local.tee $1
       i32.const 1
       i32.ne
       if
        local.get $1
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $3
       i32.store
       local.get $1
       local.get $0
       i32.store offset=12
       local.get $1
       local.get $0
       i32.store offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/pre-exec-message-input/PreExecMessageInput.decode
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $3
       local.get $1
       i32.store
       local.get $3
       local.get $1
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $3
      i32.store
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $1
      local.get $0
      i32.store offset=16
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $3
      local.get $1
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/post-exec-message-input/PostExecMessageInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $6
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 1696
   i32.store
   local.get $4
   i32.const 52
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 52
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   i32.const 0
   i32.store offset=24
   local.get $8
   local.get $5
   i32.store offset=28
   local.get $8
   local.get $7
   i32.store offset=32
   local.get $8
   local.get $1
   i32.store offset=36
   local.get $8
   local.get $2
   i32.store offset=40
   local.get $8
   local.get $3
   i32.store offset=44
   local.get $8
   i32.const 1696
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $8
   i64.const 0
   i64.store
   local.get $8
   i32.const 0
   i32.store offset=8
   local.get $8
   i32.const 40
   i32.const 51
   call $~lib/rt/itcms/__new
   local.tee $8
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=16
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=20
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i64.const 0
   i64.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=32
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i32.const 0
   i32.store offset=36
   local.get $8
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $8
   local.get $5
   i32.store
   local.get $8
   local.get $5
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   local.get $8
   local.get $7
   i32.store offset=4
   local.get $8
   local.get $7
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $8
   local.get $1
   i32.store offset=16
   local.get $8
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $8
   local.get $2
   i32.store offset=20
   local.get $8
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   i64.const 0
   i64.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $8
   local.get $3
   i32.store offset=32
   local.get $8
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   local.get $8
   i32.const 1696
   i32.store offset=36
   local.get $8
   i32.const 1696
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $8
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $6
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     block $case8|1
      block $case7|1
       block $case6|1
        block $case5|1
         block $case4|1
          block $case3|1
           block $case2|1
            block $case1|1
             block $case0|1
              local.get $0
              call $~lib/as-proto/assembly/Reader/Reader#uint32@override
              local.tee $1
              i32.const 3
              i32.shr_u
              i32.const 1
              i32.sub
              br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $8
             i32.store
             local.get $1
             local.get $0
             i32.store offset=12
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#bytes@override
             local.set $1
             global.get $~lib/memory/__stack_pointer
             local.get $1
             i32.store offset=8
             local.get $8
             local.get $1
             i32.store
             local.get $8
             local.get $1
             i32.const 0
             call $~lib/rt/itcms/__link
             br $while-continue|0
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $8
            i32.store
            local.get $1
            local.get $0
            i32.store offset=12
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#bytes@override
            local.set $1
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store offset=8
            local.get $8
            local.get $1
            i32.store offset=4
            local.get $8
            local.get $1
            i32.const 0
            call $~lib/rt/itcms/__link
            br $while-continue|0
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $8
           i32.store
           local.get $1
           local.get $0
           i32.store offset=8
           local.get $8
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint64@override
           i64.store offset=8
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $8
          i32.store
          local.get $1
          local.get $0
          i32.store offset=12
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store offset=8
          local.get $8
          local.get $1
          i32.store offset=16
          local.get $8
          local.get $1
          i32.const 0
          call $~lib/rt/itcms/__link
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $8
         i32.store
         local.get $1
         local.get $0
         i32.store offset=12
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#bytes@override
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store offset=8
         local.get $8
         local.get $1
         i32.store offset=20
         local.get $8
         local.get $1
         i32.const 0
         call $~lib/rt/itcms/__link
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $8
        i32.store
        local.get $1
        local.get $0
        i32.store offset=8
        local.get $8
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#uint64@override
        i64.store offset=24
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $8
       i32.store
       local.get $1
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $8
       local.get $1
       i32.store offset=32
       local.get $8
       local.get $1
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $8
      i32.store
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#string@override
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      local.get $8
      local.get $1
      i32.store offset=36
      local.get $8
      local.get $1
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/post-contract-call-input/PostContractCallInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 8
   i32.const 50
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $4
       i32.const 3
       i32.shr_u
       local.tee $1
       i32.const 1
       i32.ne
       if
        local.get $1
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $3
       i32.store
       local.get $1
       local.get $0
       i32.store offset=12
       local.get $1
       local.get $0
       i32.store offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/post-exec-message-input/PostExecMessageInput.decode
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $3
       local.get $1
       i32.store
       local.get $3
       local.get $1
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $3
      i32.store
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $1
      local.get $0
      i32.store offset=16
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $3
      local.get $1
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/post-tx-execute-input/PostTxExecuteInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.const 53
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $2
     local.get $0
     i32.store
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         local.tee $2
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $3
        i32.store
        local.get $2
        local.get $0
        i32.store offset=12
        local.get $2
        local.get $0
        i32.store offset=16
        local.get $0
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#uint32@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput.decode
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $3
        local.get $2
        i32.store
        local.get $3
        local.get $2
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $3
       i32.store
       local.get $2
       local.get $0
       i32.store offset=12
       local.get $2
       local.get $0
       i32.store offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       local.get $3
       local.get $2
       i32.store offset=4
       local.get $3
       local.get $2
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $3
      i32.store
      local.get $2
      local.get $0
      i32.store offset=12
      local.get $2
      local.get $0
      i32.store offset=16
      block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/receipt-input/ReceiptInput.decode$12 (result i32)
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.set $2
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       block $folding-inner00
        global.get $~lib/memory/__stack_pointer
        i32.const 10512
        i32.lt_s
        br_if $folding-inner00
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        i64.const 0
        i64.store
        local.get $4
        i32.const 0
        i32.store offset=8
        local.get $2
        i32.const 0
        i32.lt_s
        if (result i32)
         local.get $4
         local.get $0
         i32.store
         local.get $0
         i32.load offset=4
        else
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $2
         local.get $0
         i32.load
         i32.add
        end
        local.set $4
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 10512
        i32.lt_s
        br_if $folding-inner00
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i64.const 0
        i64.store
        local.get $2
        i32.const 8
        i32.const 54
        call $~lib/rt/itcms/__new
        local.tee $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $6
        i32.store offset=4
        local.get $6
        i64.const 0
        i64.store
        local.get $2
        local.get $6
        i32.store offset=4
        local.get $6
        i64.const 0
        i64.store
        local.get $2
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $5
        local.get $6
        i32.store offset=4
        loop $while-continue|01
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $0
         i32.store
         local.get $4
         local.get $0
         i32.load
         i32.gt_u
         if
          local.get $2
          local.get $0
          i32.store
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          local.tee $2
          i32.const 3
          i32.shr_u
          i32.const 1
          i32.eq
          if
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store offset=8
           local.get $6
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint64@override
           i64.store
           br $while-continue|01
          end
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store
          local.get $0
          local.get $2
          i32.const 7
          i32.and
          call $~lib/as-proto/assembly/Reader/Reader#skipType@override
          br $while-continue|01
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $6
        br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/receipt-input/ReceiptInput.decode$12
       end
       br $folding-inner1
      end
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $3
      local.get $2
      i32.store offset=8
      local.get $3
      local.get $2
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/operation-input/OperationInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/operation-input/OperationInput#constructor@varargs$13 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 20
     memory.fill
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 0
     i32.store offset=12
     local.get $3
     local.get $2
     i32.store offset=16
     local.get $3
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 12
     i32.const 57
     call $~lib/rt/itcms/__new
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 0
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $3
     local.get $2
     i32.store offset=8
     local.get $3
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/operation-input/OperationInput#constructor@varargs$13
    end
    br $folding-inner1
   end
   local.tee $2
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.store
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         local.tee $3
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $2
        i32.store
        local.get $3
        local.get $0
        i32.store offset=12
        local.get $3
        local.get $0
        i32.store offset=16
        local.get $0
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#uint32@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/with-from-tx-input/WithFromTxInput.decode
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $2
        local.get $3
        i32.store
        local.get $2
        local.get $3
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $2
       i32.store
       local.get $3
       local.get $0
       i32.store offset=12
       local.get $3
       local.get $0
       i32.store offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/block-input/BlockInput.decode
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $2
       local.get $3
       i32.store offset=4
       local.get $2
       local.get $3
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store
      local.get $3
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store offset=8
      local.get $2
      local.get $3
      i32.store offset=8
      local.get $2
      local.get $3
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $__inlined_func$~lib/string/String#concat$1211 (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.set $2
    local.get $5
    local.get $1
    i32.store
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $2
    i32.add
    local.tee $4
    i32.eqz
    if
     local.get $5
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1696
     br $__inlined_func$~lib/string/String#concat$1211
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $0
    local.get $2
    memory.copy
    local.get $2
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   block $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i32.const 0
    i32.const 44
    memory.fill
    local.get $3
    i32.const 1696
    i32.store
    local.get $3
    i32.const 1696
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
    local.tee $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store
    local.get $4
    i64.const 0
    i64.store offset=8
    local.get $4
    local.get $3
    i32.store
    i32.const 0
    i32.const 0
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
    local.get $3
    local.get $4
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load
    local.tee $4
    i32.store
    local.get $4
    local.get $1
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load
    local.tee $4
    i32.store offset=8
    local.get $1
    i32.const 6
    i32.add
    local.get $4
    i32.load offset=4
    call $~lib/string/String.UTF8.decodeUnsafe
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $1
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
    local.tee $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3328
    i32.store offset=12
    local.get $1
    i32.const 3328
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     block $__inlined_func$~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#isOwner$14 (result i32)
      global.get $~lib/memory/__stack_pointer
      i32.const 20
      i32.sub
      global.set $~lib/memory/__stack_pointer
      block $folding-inner00
       global.get $~lib/memory/__stack_pointer
       i32.const 10512
       i32.lt_s
       br_if $folding-inner00
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i32.const 0
       i32.const 20
       memory.fill
       local.get $1
       local.get $0
       i32.store
       local.get $0
       i32.load
       if
        local.get $1
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        i32.store
        local.get $1
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 10512
        i32.lt_s
        br_if $folding-inner00
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i64.const 0
        i64.store
        i32.const 0
        global.set $~argumentsLength
        local.get $3
        call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
        local.tee $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $3
        local.get $2
        call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $3
        call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
        local.set $2
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $1
        local.get $2
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load
        local.tee $0
        i32.store offset=16
        local.get $0
        i32.eqz
        if
         i32.const 2384
         i32.const 5568
         i32.const 85
         i32.const 19
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store
        local.get $1
        local.get $2
        i32.store offset=8
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 31
        i32.ne
        if
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        i32.store
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
        local.set $0
        global.get $~lib/memory/__stack_pointer
        i32.const 20
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $0
        br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#isOwner$14
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 20
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#isOwner$14
      end
      br $folding-inner2
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 44
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
    local.tee $3
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $2
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 2896
    i32.store offset=12
    local.get $1
    i32.const 2896
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 93
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5760
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5760
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2384
      i32.const 5568
      i32.const 97
      i32.const 33
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=16
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     drop
     i32.const 5792
     i32.const 5568
     i32.const 97
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    i32.const 2944
    i32.store offset=12
    local.get $1
    i32.const 2944
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 103
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5856
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5856
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2384
      i32.const 5568
      i32.const 107
      i32.const 26
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=16
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     drop
     i32.const 5792
     i32.const 5568
     i32.const 107
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    i32.const 2992
    i32.store offset=12
    local.get $1
    i32.const 2992
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 113
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5888
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5888
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     local.tee $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.set $3
     block $__inlined_func$~instanceof|~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP$394 (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $0
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $0
      if (result i32)
       local.get $0
      else
       i32.const 2384
       i32.const 5568
       i32.const 117
       i32.const 29
       call $~lib/builtins/abort
       unreachable
      end
      local.tee $1
      i32.store offset=16
      i32.const 0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.ne
      br_if $__inlined_func$~instanceof|~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP$394
      drop
      i32.const 1
     end
     i32.eqz
     if
      i32.const 5792
      i32.const 5568
      i32.const 117
      i32.const 29
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     local.get $1
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $1
     i32.store
     local.get $3
     local.get $2
     i32.store offset=4
     block $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP#preContractCall@override$395
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       call $assembly/aspect/aspect/StressTestAspect#preContractCall
       br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP#preContractCall@override$395
      end
      unreachable
     end
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    i32.const 3056
    i32.store offset=12
    local.get $1
    i32.const 3056
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 123
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5920
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5920
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     local.tee $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.set $3
     block $__inlined_func$~instanceof|~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP$440 (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $0
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $0
      if (result i32)
       local.get $0
      else
       i32.const 2384
       i32.const 5568
       i32.const 127
       i32.const 30
       call $~lib/builtins/abort
       unreachable
      end
      local.tee $1
      i32.store offset=16
      i32.const 0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.ne
      br_if $__inlined_func$~instanceof|~lib/@artela/aspect-libs/types/aspect-interface/IPreContractCallJP$440
      drop
      i32.const 1
     end
     i32.eqz
     if
      i32.const 5792
      i32.const 5568
      i32.const 127
      i32.const 30
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     local.get $1
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $1
     i32.store
     local.get $3
     local.get $2
     i32.store offset=4
     block $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IPostContractCallJP#postContractCall@override$441
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 31
      i32.eq
      if
       local.get $2
       call $assembly/aspect/aspect/StressTestAspect#postContractCall
       br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IPostContractCallJP#postContractCall@override$441
      end
      unreachable
     end
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    i32.const 3120
    i32.store offset=12
    local.get $1
    i32.const 3120
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 133
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5952
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5952
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.set $1
     local.get $0
     i32.eqz
     if
      i32.const 2384
      i32.const 5568
      i32.const 137
      i32.const 27
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     local.get $0
     i32.store offset=16
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     drop
     i32.const 5792
     i32.const 5568
     i32.const 137
     i32.const 27
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store
    local.get $2
    i32.const 3280
    i32.store offset=12
    local.get $1
    i32.const 3280
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=20
     local.get $3
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 20
     memory.fill
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.load offset=4
     i32.eqz
     if
      i32.const 5680
      i32.const 5568
      i32.const 143
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     i32.const 5984
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     local.get $1
     i32.const 5984
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
     local.tee $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.tee $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.set $2
     local.get $0
     i32.eqz
     if
      i32.const 2384
      i32.const 5568
      i32.const 147
      i32.const 23
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store
     local.get $2
     local.get $1
     i32.store offset=4
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     drop
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 6016
    i32.store offset=20
    local.get $0
    local.get $1
    i32.store offset=40
    i32.const 6016
    local.get $1
    call $~lib/string/String.__concat
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 6064
    i32.store offset=12
    local.get $0
    i32.const 6064
    call $~lib/string/String.__concat
    i32.const 5568
    i32.const 79
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/entrance/execute (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  global.get $~lib/@artela/aspect-libs/types/entrance/entryPoint
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/types/aspect-entry/EntryPoint#execute
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 48
  memory.fill
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.get $0
  i32.store offset=4
  block $folding-inner1
   block $folding-inner0
    local.get $3
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u
    local.tee $3
    i32.const 127
    i32.and
    local.set $2
    local.get $3
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=12
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i32.load8_u
    local.tee $3
    i32.const 127
    i32.and
    i32.const 7
    i32.shl
    i32.or
    local.set $2
    local.get $3
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=16
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i32.load8_u
    local.tee $3
    i32.const 127
    i32.and
    i32.const 14
    i32.shl
    i32.or
    local.set $2
    local.get $3
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=20
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i32.load8_u
    local.tee $3
    i32.const 127
    i32.and
    i32.const 21
    i32.shl
    i32.or
    local.set $2
    local.get $3
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=24
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i32.load8_u
    local.tee $3
    i32.const 15
    i32.and
    i32.const 28
    i32.shl
    i32.or
    local.set $2
    local.get $3
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=28
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=32
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=36
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=40
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=44
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $1
    i32.const 48
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
   i32.const 1248
   i32.const 6144
   i32.const 210
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  block $folding-inner0
   local.get $1
   if
    local.get $2
    local.get $0
    i32.store offset=12
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    drop
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $1
    local.get $0
    i32.load
    i32.add
    i32.store
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $1
    local.get $2
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
   else
    loop $while-continue|0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load
     local.set $1
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     i32.add
     i32.store
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load
     local.set $3
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $3
     local.get $0
     i32.load offset=4
     i32.gt_u
     br_if $folding-inner0
     local.get $1
     i32.load8_u
     i32.const 128
     i32.and
     br_if $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 1248
  i32.const 6144
  i32.const 210
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         br_table $case0|0 $case1|0 $case2|0 $case3|0 $case5|0 $case4|0 $case5|0
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.const 0
        call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
        br $break|0
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.const 8
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store
      local.get $1
      local.get $0
      i32.store offset=4
      local.get $1
      local.get $0
      i32.store offset=8
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
      br $break|0
     end
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=12
      local.get $1
      local.get $0
      i32.store
      local.get $0
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
      i32.const 7
      i32.and
      local.tee $1
      i32.const 4
      i32.ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       local.get $1
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 4
    call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6256
   i32.store
   local.get $1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 6256
   local.get $0
   call $~lib/string/String.__concat
   i32.const 6144
   i32.const 131
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64 (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 48
  memory.fill
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load
  local.set $4
  local.get $1
  local.get $0
  i32.store offset=4
  block $folding-inner1
   block $folding-inner0
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=12
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 7
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=16
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 14
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=20
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 21
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=24
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 28
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=28
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 35
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=32
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 42
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=36
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 49
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=40
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    local.tee $5
    i64.const 127
    i64.and
    i64.const 56
    i64.shl
    i64.or
    local.set $2
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    local.get $1
    local.get $0
    i32.store offset=44
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $3
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load
    local.set $4
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $4
    local.get $0
    i32.load offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    local.get $3
    i64.load8_u
    i64.const 1
    i64.and
    i64.const 63
    i64.shl
    i64.or
    local.set $2
    local.get $1
    i32.const 48
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
   i32.const 1248
   i32.const 6144
   i32.const 210
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $2of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $2of2 $2of2 $2of2 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $0
   i32.store
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   local.get $1
   i32.add
   local.set $4
   loop $while-continue|0
    local.get $1
    local.get $4
    i32.lt_u
    if
     local.get $1
     i32.load16_u
     local.tee $5
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $3
       i32.const 2
       i32.add
      else
       local.get $5
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $1
       i32.const 2
       i32.add
       local.get $4
       i32.lt_u
       i32.and
       if
        local.get $1
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $3
         i32.const 4
         i32.add
         local.set $3
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         br $while-continue|0
        end
       end
       local.get $3
       i32.const 3
       i32.add
      end
     end
     local.set $3
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
   local.get $2
   local.get $3
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $1
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array.wrap (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $2
   else
    i32.const 1552
    i32.const 5504
    i32.const 1869
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.set $1
  else
   local.get $1
   local.get $2
   i32.gt_s
   if
    i32.const 1552
    i32.const 5504
    i32.const 1874
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 9
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $2
   i32.const 6
   i32.add
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   local.tee $1
   i32.store
   local.get $1
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   i32.store
   local.get $2
   i32.const 6
   i32.add
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   call $~lib/string/String.UTF8.encode@varargs
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const -1
   call $~lib/typedarray/Uint8Array.wrap
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $3
   i32.store offset=12
   i32.const 0
   local.set $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/typedarray/Uint8Array#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $1
     local.get $3
     local.get $0
     call $~lib/typedarray/Uint8Array#__get
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/package/sys.log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
   call $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#substr (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  local.get $0
  i32.store
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.set $1
  end
  local.get $1
  i32.sub
  local.tee $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1696
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/string/strtol<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $2
   i32.load16_u
   local.set $0
   loop $while-continue|0
    block $__inlined_func$~lib/util/string/isSpace$625 (result i32)
     local.get $0
     i32.const 128
     i32.or
     i32.const 160
     i32.eq
     local.get $0
     i32.const 9
     i32.sub
     i32.const 4
     i32.le_u
     i32.or
     local.get $0
     i32.const 5760
     i32.lt_u
     br_if $__inlined_func$~lib/util/string/isSpace$625
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$625
     drop
     block $break|0
      block $case0|0
       local.get $0
       i32.const 5760
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8232
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8233
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8239
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8287
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 12288
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 65279
       i32.eq
       br_if $case0|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace$625
     end
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.add
     local.tee $2
     i32.load16_u
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   i32.const 1
   local.set $3
   local.get $0
   i32.const 45
   i32.eq
   local.tee $5
   local.get $0
   i32.const 43
   i32.eq
   i32.or
   if (result i32)
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    i32.const -1
    i32.const 1
    local.get $5
    select
    local.set $3
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u
   else
    local.get $0
   end
   i32.const 48
   i32.eq
   local.get $1
   i32.const 2
   i32.gt_s
   i32.and
   if (result i32)
    local.get $2
    i32.load16_u offset=2
    i32.const 32
    i32.or
    i32.const 120
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    local.get $1
    i32.const 2
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 1
   i32.sub
   local.set $6
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     block $while-break|2
      local.get $2
      i32.load16_u
      local.tee $5
      i32.const 48
      i32.sub
      local.tee $0
      i32.const 10
      i32.ge_u
      if
       local.get $5
       i32.const 65
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $5
        i32.const 55
        i32.sub
       else
        local.get $5
        i32.const 87
        i32.sub
        local.get $5
        local.get $5
        i32.const 97
        i32.sub
        i32.const 25
        i32.le_u
        select
       end
       local.set $0
      end
      local.get $0
      i32.const 16
      i32.ge_u
      if
       local.get $1
       local.get $6
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $4
      i32.const 4
      i32.shl
      local.get $0
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      br $while-continue|2
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.mul
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.and
   if
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8336
   i32.store offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   local.get $1
   i32.const 8336
   i32.store
   block $__inlined_func$~lib/string/String#startsWith$1213
    local.get $2
    i32.const 8332
    i32.load
    i32.const 1
    i32.shr_u
    local.tee $2
    i32.lt_s
    if
     local.get $1
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $2
     br $__inlined_func$~lib/string/String#startsWith$1213
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    i32.const 8336
    i32.store offset=4
    block $__inlined_func$~lib/util/string/compareImpl$1 (result i32)
     local.get $0
     local.set $1
     i32.const 8336
     local.set $5
     i32.const 1
     local.get $0
     i32.const 7
     i32.and
     local.get $2
     i32.const 4
     i32.lt_u
     select
     i32.eqz
     if
      loop $do-loop|0
       local.get $1
       i64.load
       local.get $5
       i64.load
       i64.eq
       if
        local.get $1
        i32.const 8
        i32.add
        local.set $1
        local.get $5
        i32.const 8
        i32.add
        local.set $5
        local.get $2
        i32.const 4
        i32.sub
        local.tee $2
        i32.const 4
        i32.ge_u
        br_if $do-loop|0
       end
      end
     end
     loop $while-continue|1
      local.get $2
      local.tee $3
      i32.const 1
      i32.sub
      local.set $2
      local.get $3
      if
       local.get $5
       i32.load16_u
       local.tee $3
       local.get $1
       i32.load16_u
       local.tee $6
       i32.ne
       if
        local.get $6
        local.get $3
        i32.sub
        br $__inlined_func$~lib/util/string/compareImpl$1
       end
       local.get $1
       i32.const 2
       i32.add
       local.set $1
       local.get $5
       i32.const 2
       i32.add
       local.set $5
       br $while-continue|1
      end
     end
     i32.const 0
    end
    i32.eqz
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $2
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 2
    i32.const 2147483647
    call $~lib/string/String#substr
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    local.get $0
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.const 1
   i32.shr_u
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=12
   i32.const 0
   local.set $2
   loop $for-loop|0
    local.get $1
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $3
     i32.store
     local.get $5
     local.get $0
     i32.store offset=4
     local.get $5
     local.get $0
     local.get $2
     i32.const 2
     call $~lib/string/String#substr
     local.tee $5
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $3
     local.get $4
     local.get $5
     call $~lib/util/string/strtol<i32>
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#charAt (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 8368
  i32.store
  local.get $0
  i32.const 8364
  i32.load
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1696
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.const 1
  i32.shl
  i32.const 8368
  i32.add
  i32.load16_u
  i32.store16
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/uint8ArrayToHex (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.const 24
  memory.fill
  i32.const 1696
  local.set $1
  local.get $3
  i32.const 1696
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/typedarray/Uint8Array#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8368
    i32.store offset=20
    local.get $4
    i32.const 4
    i32.shr_u
    call $~lib/string/String#charAt
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 8368
    i32.store offset=20
    local.get $4
    i32.const 15
    i32.and
    call $~lib/string/String#charAt
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=16
    local.get $5
    local.get $4
    call $~lib/string/String.__concat
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=8
    local.get $3
    local.get $1
    local.get $4
    call $~lib/string/String.__concat
    local.tee $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  i32.const 0
  local.set $0
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.get $1
      i32.const 2
      i32.add
      local.get $4
      i32.lt_u
      i32.and
      if
       local.get $1
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $0
      i32.const 3
      i32.add
     end
    end
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $3
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:length
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/stringToUint8Array (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  local.get $0
  call $~lib/string/String.UTF8.encode@varargs
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  call $~lib/typedarray/Uint8Array.wrap
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi#nonce (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getNonce
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 16
   i32.const 59
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 8
   i32.const 8
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $3
   i32.store
   i32.const 0
   i32.const 0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $0
   i32.store
   local.get $0
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $1
   i64.load offset=6
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $3
   i32.store
   local.get $3
   i64.load offset=8
   drop
   local.get $0
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1696
  i32.store
  local.get $1
  i32.const 1696
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store offset=4
   local.get $4
   local.get $2
   i32.store offset=8
   local.get $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 4
   i32.const 60
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $4
   local.get $2
   i32.store
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $2
     local.get $0
     i32.store
     local.get $0
     call $~lib/as-proto/assembly/Reader/Reader#uint32@override
     local.tee $2
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $4
      local.get $2
      i32.store
      local.get $4
      local.get $2
      i32.const 0
      call $~lib/rt/itcms/__link
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store
   local.get $1
   i32.const 10
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   block $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override$15
    block $default
     block $case1
      local.get $1
      i32.const 8
      i32.sub
      i32.load
      local.tee $0
      i32.const 4
      i32.ne
      if
       local.get $0
       i32.const 6
       i32.eq
       br_if $case1
       br $default
      end
      local.get $1
      local.get $2
      call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string
      br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override$15
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     local.get $2
     i32.store
     i32.const 0
     local.set $0
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.add
     local.set $3
     loop $while-continue|0
      local.get $2
      local.get $3
      i32.lt_u
      if
       local.get $2
       i32.load16_u
       local.tee $4
       i32.const 128
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1
        i32.add
       else
        local.get $4
        i32.const 2048
        i32.lt_u
        if (result i32)
         local.get $0
         i32.const 2
         i32.add
        else
         local.get $4
         i32.const 64512
         i32.and
         i32.const 55296
         i32.eq
         local.get $2
         i32.const 2
         i32.add
         local.get $3
         i32.lt_u
         i32.and
         if
          local.get $2
          i32.load16_u offset=2
          i32.const 64512
          i32.and
          i32.const 56320
          i32.eq
          if
           local.get $0
           i32.const 4
           i32.add
           local.set $0
           local.get $2
           i32.const 4
           i32.add
           local.set $2
           br $while-continue|0
          end
         end
         local.get $0
         i32.const 3
         i32.add
        end
       end
       local.set $0
       local.get $2
       i32.const 2
       i32.add
       local.set $2
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store offset=4
     local.get $2
     local.get $1
     i32.load offset=8
     local.tee $3
     i32.store
     local.get $2
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store
     local.get $2
     local.get $3
     i32.store
     local.get $3
     local.get $3
     i32.load offset=12
     local.tee $2
     i32.const 1
     i32.add
     local.tee $4
     i32.const 2
     i32.const 1
     call $~lib/array/ensureCapacity
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     local.get $3
     local.get $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $0
     i32.const 128
     i32.lt_u
     if (result i32)
      i32.const 1
     else
      local.get $0
      i32.const 16384
      i32.lt_u
      if (result i32)
       i32.const 2
      else
       local.get $0
       i32.const 2097152
       i32.lt_u
       if (result i32)
        i32.const 3
       else
        i32.const 4
        i32.const 5
        local.get $0
        i32.const 268435456
        i32.lt_u
        select
       end
      end
     end
     local.get $1
     i32.load
     i32.add
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store
     local.get $2
     local.get $1
     i32.store offset=4
     local.get $1
     local.get $0
     local.get $1
     i32.load
     i32.add
     i32.store
     local.get $2
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override$15
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1552
    i32.const 8928
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   local.get $2
   i32.shl
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $3
   if
    i32.const 1073741820
    local.get $4
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load
   local.tee $5
   local.get $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#set:length (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.load
   local.tee $3
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $3
   i32.store
   local.get $3
   i32.const 0
   i32.store
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=12
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $2
   local.get $1
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   local.get $2
   i32.store
   local.get $3
   local.get $2
   i32.store offset=12
   local.get $3
   local.get $2
   i32.load
   local.tee $3
   i32.store offset=8
   local.get $3
   i32.load
   call $~lib/typedarray/Uint8Array#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.store offset=8
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.load offset=4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $2
   local.get $1
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   i32.load offset=8
   local.set $0
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi#get (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1696
  i32.store
  local.get $1
  i32.const 1696
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
  call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/__AspectPropertyApi__.get
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/uint-data/UintData.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 8
   i32.const 65
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store
   local.get $1
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $2
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     local.get $0
     call $~lib/as-proto/assembly/Reader/Reader#uint32@override
     local.tee $1
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $4
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      i64.store
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi#keccak (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
  call $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.keccak
  local.set $0
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/static-call-request/StaticCallRequest.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store
  local.get $1
  i32.const 10
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 26
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.store offset=4
  local.get $1
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 32
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i64.load offset=16
  call $~lib/as-proto/assembly/Writer/Writer#uint64@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/static-call-result/StaticCallResult.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 1696
   i32.store
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/static-call-result/StaticCallResult#constructor@varargs$16 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 20
     memory.fill
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 1696
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.store offset=8
     local.get $3
     local.get $2
     i32.store offset=12
     local.get $3
     i32.const 1696
     i32.store offset=16
     local.get $3
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 16
     i32.const 68
     call $~lib/rt/itcms/__new
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i64.const 0
     i64.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $3
     local.get $2
     i32.store
     local.get $3
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 1696
     i32.store offset=8
     local.get $3
     i32.const 1696
     i32.store offset=4
     local.get $3
     i32.const 1696
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i64.const 0
     i64.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/static-call-result/StaticCallResult#constructor@varargs$16
    end
    br $folding-inner1
   end
   local.tee $2
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $3
     local.get $0
     i32.store
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         local.tee $3
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $2
        i32.store
        local.get $3
        local.get $0
        i32.store offset=12
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $3
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=8
        local.get $2
        local.get $3
        i32.store
        local.get $2
        local.get $3
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $2
       i32.store
       local.get $3
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#string@override
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $2
       local.get $3
       i32.store offset=4
       local.get $2
       local.get $3
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store
      local.get $3
      local.get $0
      i32.store offset=8
      local.get $2
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      i64.store offset=8
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $3
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/aspect/aspect/StressTestAspect#preContractCall
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 112
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 112
   memory.fill
   local.get $0
   i32.const 8096
   i32.store
   i32.const 8096
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8256
   i32.store
   i32.const 8256
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
   call $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@artela/aspect-libs/common/helper/convert/uint8ArrayToHex
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8304
   i32.store offset=4
   local.get $0
   i32.const 8304
   call $~lib/string/String.__eq
   i32.eqz
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8432
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8432
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 0
    i32.store offset=8
    local.get $0
    i32.const 1696
    i32.store
    local.get $0
    i32.const 1696
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
    local.tee $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8432
    i32.store offset=8
    local.get $0
    i32.const 8432
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
    call $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.revert
    i32.const 8432
    i32.const 4784
    i32.const 26
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8544
   i32.store
   i32.const 8544
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8608
   i32.store offset=16
   i32.const 8608
   call $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getBalance
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8608
   i32.store offset=24
   i32.const 8608
   call $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=24
   i32.const 1696
   call $~lib/@artela/aspect-libs/common/helper/convert/stringToUint8Array
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 20
   memory.fill
   i32.const 0
   global.set $~argumentsLength
   local.get $3
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $3
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $1
   local.get $3
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getState
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8608
   i32.store offset=16
   i32.const 8608
   call $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i64.const 0
   i64.store offset=8
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/__StateDbApi__.getCodeHash
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8608
   i32.store offset=16
   i32.const 8608
   call $~lib/@artela/aspect-libs/common/helper/convert/hexToUint8Array
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi#nonce
   global.get $~lib/memory/__stack_pointer
   i32.const 8720
   i32.store
   i32.const 8720
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8784
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8784
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8832
   i32.store offset=8
   i32.const 2
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 8832
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
   local.tee $0
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8864
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 4
   i32.const 62
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8864
   i32.store offset=8
   local.get $2
   i32.const 8864
   i32.store
   local.get $2
   i32.const 8864
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8896
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   block $__inlined_func$~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>$17 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i32.const 0
     i32.store offset=8
     local.get $1
     local.get $2
     i32.store
     local.get $1
     i32.const 8896
     i32.store offset=4
     local.get $1
     local.get $2
     i32.const 8896
     call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
     local.tee $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 10512
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i32.const 0
     i32.store offset=8
     local.get $2
     i32.const 8
     i32.const 63
     call $~lib/rt/itcms/__new
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     i32.const 0
     i32.store
     local.get $2
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     local.get $2
     i32.const 0
     i32.store offset=4
     local.get $2
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $2
     local.get $0
     i32.store
     local.get $2
     local.get $0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $2
     local.get $1
     i32.store offset=4
     local.get $2
     local.get $1
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     br $__inlined_func$~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>$17
    end
    br $folding-inner1
   end
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
   i32.store
   local.get $0
   i32.const 8864
   i32.store offset=8
   local.get $0
   i32.const 8864
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi#get
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectState
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8976
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 9008
   i32.store offset=24
   i32.const 9008
   call $~lib/@artela/aspect-libs/common/helper/convert/stringToUint8Array
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 1696
   i32.store
   local.get $1
   i32.const 1696
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8976
   i32.store offset=8
   local.get $1
   i32.const 8976
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $1
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/aspect-state-api/__AspectStateApi__.set
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContextApi
   i32.store
   local.get $1
   i32.const 9184
   i32.store offset=4
   local.get $1
   i32.const 9184
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8832
   i32.store offset=12
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   i32.const 8832
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $2
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=4
   local.get $1
   call $~lib/@artela/aspect-libs/common/helper/convert/uint8ArrayToHex
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i64.const 0
   i64.store offset=8
   local.get $0
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContextApi
   i32.store
   local.get $0
   i32.const 9232
   i32.store offset=4
   local.get $0
   i32.const 9232
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 9280
   i32.store offset=12
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   i32.const 9280
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i64.load
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9312
   i32.store
   i32.const 9312
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   i32.const 9360
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9360
   call $~lib/@artela/aspect-libs/common/helper/convert/stringToUint8Array
   local.tee $0
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi#keccak
   i32.store offset=72
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.sha256
   local.set $2
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store offset=76
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/__CryptoApi__.ripemd160
   local.set $0
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   i32.const 9392
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   i32.const 9360
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   i32.const 9504
   i32.store
   i32.const 9504
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store offset=12
   local.get $4
   local.get $2
   i32.store offset=16
   local.get $4
   local.get $3
   i32.store offset=20
   local.get $4
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 24
   i32.const 67
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $4
   local.get $2
   i32.store
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $4
   local.get $0
   i32.store offset=8
   local.get $4
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i64.const 0
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $4
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9552
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 9552
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi#get
   local.tee $0
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   i32.const 9584
   i32.store
   i32.const 9584
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9632
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 9632
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi#get
   local.tee $1
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   i32.const 9664
   i32.store
   i32.const 9664
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.aspectProperty
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9008
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 9008
   call $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi#get
   local.tee $2
   i32.store offset=104
   global.get $~lib/memory/__stack_pointer
   i32.const 9712
   i32.store
   i32.const 9712
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $4
   local.get $0
   i32.store
   local.get $4
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i64.const 400000
   i64.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $4
   local.get $2
   i32.store offset=8
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 24
   memory.fill
   local.get $1
   local.get $4
   i32.store
   local.get $1
   i32.const 9760
   i32.store offset=4
   local.get $1
   local.get $4
   i32.const 9760
   call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
   local.tee $1
   i32.store offset=8
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/evm-call-api/__EvmCallApi__.staticCall
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9792
   i32.store offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   i32.const 9792
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $1
   i32.store offset=108
   global.get $~lib/memory/__stack_pointer
   i32.const 112
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#slice (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.le_s
  select
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  local.get $1
  local.get $1
  i32.const 4
  i32.gt_s
  select
  local.get $4
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  local.get $3
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.set $2
  local.get $5
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $4
  local.get $0
  i32.load offset=4
  i32.add
  local.get $1
  memory.copy
  local.get $5
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.parseMethodSig (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 4
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1696
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/typedarray/Uint8Array#slice
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=4
  local.get $0
  call $~lib/@artela/aspect-libs/common/helper/convert/uint8ArrayToHex
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.computeMethodSig (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 24
  memory.fill
  local.get $1
  global.get $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto
  i32.store offset=12
  local.get $1
  local.get $0
  i32.store offset=20
  local.get $0
  call $~lib/@artela/aspect-libs/common/helper/convert/stringToUint8Array
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $0
  call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi#keccak
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/typedarray/Uint8Array#slice
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=4
  local.get $0
  call $~lib/@artela/aspect-libs/common/helper/convert/uint8ArrayToHex
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1248
    i32.const 8928
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   block $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$1176
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.eqz
    local.get $4
    i32.const 0
    i32.le_s
    i32.or
    if
     local.get $3
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $2
     br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$1176
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $3
    loop $while-continue|0
     local.get $2
     local.get $4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $3
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $5
      i32.store
      local.get $0
      local.get $1
      i32.store offset=4
      local.get $5
      local.get $1
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$1176
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.const 0
   i32.ge_s
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/call-tree-query/CallTreeQuery.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $1
  i32.store
  local.get $1
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i64.load
  call $~lib/as-proto/assembly/Writer/Writer#uint64@override
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 24
  i32.const 77
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 64
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $6
  i64.const 0
  i64.store
  local.get $6
  i32.const 0
  i32.store offset=8
  local.get $6
  i32.const 68
  i32.const 75
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=8
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=24
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=28
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=40
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.store offset=64
  local.get $6
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store
  local.get $6
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $6
  local.get $2
  i32.store offset=8
  local.get $6
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $6
  local.get $3
  i32.store offset=24
  local.get $6
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $4
  i32.store offset=28
  local.get $6
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $6
  i32.const 1696
  i32.store offset=40
  local.get $6
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $6
  local.get $5
  i32.store offset=64
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $3
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $7
   i32.const 1696
   i32.store
   i32.const 0
   global.set $~argumentsLength
   local.get $7
   i32.const 60
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 60
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $8
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $9
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $5
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 3
   i32.const 76
   i32.const 10032
   call $~lib/rt/__newArray
   local.tee $6
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.tee $10
   i32.const 0
   i32.store offset=28
   local.get $10
   local.get $8
   i32.store offset=32
   local.get $10
   local.get $9
   i32.store offset=36
   local.get $10
   local.get $3
   i32.store offset=40
   local.get $10
   local.get $4
   i32.store offset=44
   local.get $10
   local.get $5
   i32.store offset=48
   local.get $10
   i32.const 1696
   i32.store offset=52
   local.get $10
   local.get $6
   i32.store offset=56
   local.get $8
   local.get $9
   local.get $3
   local.get $4
   local.get $5
   local.get $6
   call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 60
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   local.get $3
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $4
     local.get $0
     i32.store
     block $case11|1
      block $case10|1
       block $case9|1
        block $case8|1
         block $case7|1
          block $case6|1
           block $case5|1
            block $case4|1
             block $case3|1
              block $case2|1
               block $case1|1
                block $case0|1
                 local.get $0
                 call $~lib/as-proto/assembly/Reader/Reader#uint32@override
                 local.tee $4
                 i32.const 3
                 i32.shr_u
                 i32.const 1
                 i32.sub
                 br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1
                end
                global.get $~lib/memory/__stack_pointer
                local.tee $4
                local.get $3
                i32.store
                local.get $4
                local.get $0
                i32.store offset=12
                local.get $0
                call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                local.set $4
                global.get $~lib/memory/__stack_pointer
                local.get $4
                i32.store offset=8
                local.get $3
                local.get $4
                i32.store
                local.get $3
                local.get $4
                i32.const 0
                call $~lib/rt/itcms/__link
                br $while-continue|0
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $4
               local.get $3
               i32.store
               local.get $4
               local.get $0
               i32.store offset=12
               local.get $0
               call $~lib/as-proto/assembly/Reader/Reader#bytes@override
               local.set $4
               global.get $~lib/memory/__stack_pointer
               local.get $4
               i32.store offset=8
               local.get $3
               local.get $4
               i32.store offset=4
               local.get $3
               local.get $4
               i32.const 0
               call $~lib/rt/itcms/__link
               br $while-continue|0
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              local.get $3
              i32.store
              local.get $4
              local.get $0
              i32.store offset=12
              local.get $0
              call $~lib/as-proto/assembly/Reader/Reader#bytes@override
              local.set $4
              global.get $~lib/memory/__stack_pointer
              local.get $4
              i32.store offset=8
              local.get $3
              local.get $4
              i32.store offset=8
              local.get $3
              local.get $4
              i32.const 0
              call $~lib/rt/itcms/__link
              br $while-continue|0
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             local.get $3
             i32.store
             local.get $4
             local.get $0
             i32.store offset=8
             local.get $3
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#uint64@override
             i64.store offset=16
             br $while-continue|0
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $3
            i32.store
            local.get $4
            local.get $0
            i32.store offset=12
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#bytes@override
            local.set $4
            global.get $~lib/memory/__stack_pointer
            local.get $4
            i32.store offset=8
            local.get $3
            local.get $4
            i32.store offset=24
            local.get $3
            local.get $4
            i32.const 0
            call $~lib/rt/itcms/__link
            br $while-continue|0
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $3
           i32.store
           local.get $4
           local.get $0
           i32.store offset=12
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#bytes@override
           local.set $4
           global.get $~lib/memory/__stack_pointer
           local.get $4
           i32.store offset=8
           local.get $3
           local.get $4
           i32.store offset=28
           local.get $3
           local.get $4
           i32.const 0
           call $~lib/rt/itcms/__link
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          local.get $3
          i32.store
          local.get $4
          local.get $0
          i32.store offset=8
          local.get $3
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint64@override
          i64.store offset=32
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         local.get $3
         i32.store
         local.get $4
         local.get $0
         i32.store offset=12
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#string@override
         local.set $4
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store offset=8
         local.get $3
         local.get $4
         i32.store offset=40
         local.get $3
         local.get $4
         i32.const 0
         call $~lib/rt/itcms/__link
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $3
        i32.store
        local.get $4
        local.get $0
        i32.store offset=8
        local.get $3
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#uint64@override
        i64.store offset=48
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $3
       i32.store
       local.get $4
       local.get $0
       i32.store offset=8
       local.get $3
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint64@override
       i64.store offset=56
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $3
      i32.store offset=8
      local.get $4
      local.get $3
      i32.load offset=64
      local.tee $5
      i32.store
      local.get $4
      local.get $0
      i32.store offset=8
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 10512
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i32.const 0
      i32.store
      local.get $4
      local.get $5
      i32.store
      local.get $5
      local.get $5
      i32.load offset=12
      local.tee $4
      i32.const 1
      i32.add
      local.tee $6
      i32.const 3
      i32.const 1
      call $~lib/array/ensureCapacity
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      i32.load offset=4
      local.get $4
      i32.const 3
      i32.shl
      i32.add
      local.get $2
      i64.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      local.get $6
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $4
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#find (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $4
  local.get $3
  local.get $0
  i32.store
  local.get $4
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=12
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i64.load
     i64.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  local.get $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 3
  i32.shl
  i32.const 3
  i32.div_s
  local.tee $5
  i32.const 4
  i32.shl
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.load offset=8
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $8
  local.get $0
  i32.load offset=16
  i32.const 4
  i32.shl
  i32.add
  local.set $4
  local.get $3
  local.set $2
  loop $while-continue|0
   local.get $4
   local.get $8
   i32.ne
   if
    local.get $8
    i32.load offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $8
     i64.load
     local.tee $6
     i64.store
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load offset=8
     local.tee $9
     i32.store offset=8
     local.get $2
     local.get $9
     i32.store offset=8
     local.get $2
     local.get $7
     local.get $1
     local.get $6
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.const 374761401
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.get $6
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.tee $9
     i32.const 15
     i32.shr_u
     local.get $9
     i32.xor
     i32.const -2048144777
     i32.mul
     local.tee $9
     i32.const 13
     i32.shr_u
     local.get $9
     i32.xor
     i32.const -1028477379
     i32.mul
     local.tee $9
     i32.const 16
     i32.shr_u
     local.get $9
     i32.xor
     i32.and
     i32.const 2
     i32.shl
     i32.add
     local.tee $9
     i32.load
     i32.store offset=12
     local.get $9
     local.get $2
     i32.store
     local.get $2
     i32.const 16
     i32.add
     local.set $2
    end
    local.get $8
    i32.const 16
    i32.add
    local.set $8
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $7
  i32.store offset=12
  local.get $0
  local.get $7
  i32.store
  local.get $0
  local.get $7
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $5
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#set (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $1
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.const 374761401
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const -1028477379
  i32.mul
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $3
  i32.const 15
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $3
  i32.const 13
  i32.shr_u
  local.get $3
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $3
  i32.const 16
  i32.shr_u
  local.get $3
  i32.xor
  local.tee $4
  call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#find
  local.tee $3
  if
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $0
   i32.load offset=16
   local.set $5
   local.get $3
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.store offset=4
    local.get $0
    i32.load offset=20
    local.set $5
    local.get $3
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $5
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=4
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   local.get $5
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   local.get $6
   i32.const 4
   i32.shl
   i32.add
   local.tee $3
   local.get $1
   i64.store
   local.get $5
   local.get $2
   i32.store
   local.get $3
   local.get $2
   i32.store offset=8
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $3
   local.get $2
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=12
   local.get $0
   local.get $3
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-tree/EthCallTree.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $3
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $5
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#constructor
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store offset=4
   local.get $4
   local.get $3
   i32.store offset=8
   local.get $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 4
   i32.const 74
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   i32.const 0
   i32.store
   local.get $6
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $6
   local.get $3
   i32.store
   local.get $6
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $6
   i32.store offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $5
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $1
     local.get $0
     i32.store
     local.get $0
     call $~lib/as-proto/assembly/Reader/Reader#uint32@override
     local.tee $1
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      i64.const 0
      local.set $2
      i32.const 0
      local.set $1
      i32.const 0
      local.set $3
      i32.const 0
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      local.get $7
      i32.add
      local.set $7
      loop $for-loop|2
       global.get $~lib/memory/__stack_pointer
       local.tee $8
       local.get $0
       i32.store
       local.get $7
       local.get $0
       i32.load
       i32.gt_u
       if
        local.get $8
        local.get $0
        i32.store
        block $break|3
         block $case2|3
          block $case1|3
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint32@override
           local.tee $8
           i32.const 3
           i32.shr_u
           local.tee $9
           i32.const 1
           i32.ne
           if
            local.get $9
            i32.const 2
            i32.eq
            br_if $case1|3
            br $case2|3
           end
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint64@override
           local.set $2
           i32.const 1
           local.set $3
           br $break|3
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $0
          i32.store
          local.get $1
          local.get $0
          i32.store offset=8
          local.get $1
          local.get $0
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage.decode
          local.tee $1
          i32.store offset=12
          i32.const 1
          local.set $4
          br $break|3
         end
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $0
         local.get $8
         i32.const 7
         i32.and
         call $~lib/as-proto/assembly/Reader/Reader#skipType@override
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $8
        local.get $6
        i32.store
        local.get $6
        i32.load
        i32.eqz
        if
         local.get $8
         local.get $6
         i32.store
         call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#constructor
         local.set $8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store offset=8
         local.get $6
         local.get $8
         i32.store
         local.get $6
         local.get $8
         i32.const 0
         call $~lib/rt/itcms/__link
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $8
        local.get $6
        i32.store
        local.get $8
        local.get $6
        i32.load
        local.tee $9
        i32.store offset=16
        local.get $1
        i32.const 0
        local.get $4
        i32.const 0
        local.get $3
        i32.const 0
        local.get $9
        select
        select
        select
        if
         local.get $8
         local.get $9
         i32.store
         local.get $8
         local.get $1
         i32.store offset=8
         local.get $9
         local.get $2
         local.get $1
         call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#set
        end
        br $for-loop|2
       end
      end
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#keys (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store
   local.get $6
   local.get $0
   i32.store
   local.get $0
   i32.load offset=8
   local.set $4
   local.get $6
   local.get $0
   i32.store
   local.get $0
   i32.load offset=16
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i64.const 0
   i64.store offset=8
   local.get $0
   i32.const 16
   i32.const 76
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store
   local.get $7
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=12
   local.get $2
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1552
    i32.const 8928
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   local.get $2
   local.get $2
   i32.const 8
   i32.le_u
   select
   i32.const 3
   i32.shl
   local.tee $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $8
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=12
   local.get $7
   local.get $8
   i32.store
   local.get $7
   local.get $8
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   local.get $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $7
   i32.store offset=4
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.gt_s
    if
     local.get $4
     local.get $3
     i32.const 4
     i32.shl
     i32.add
     local.tee $6
     i32.load offset=12
     i32.const 1
     i32.and
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $7
      i32.store
      local.get $1
      local.tee $0
      i32.const 1
      i32.add
      local.set $1
      local.get $6
      i64.load
      local.set $5
      local.get $8
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 10512
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      i32.const 0
      i32.store
      local.get $6
      local.get $7
      i32.store
      local.get $0
      local.get $7
      i32.load offset=12
      i32.ge_u
      if
       local.get $0
       i32.const 0
       i32.lt_s
       if
        i32.const 1248
        i32.const 8928
        i32.const 130
        i32.const 22
        call $~lib/builtins/abort
        unreachable
       end
       local.get $7
       local.get $0
       i32.const 1
       i32.add
       local.tee $6
       i32.const 3
       i32.const 1
       call $~lib/array/ensureCapacity
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store
       local.get $7
       local.get $6
       i32.store offset=12
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      local.get $7
      i32.store
      local.get $7
      i32.load offset=4
      local.get $0
      i32.const 3
      i32.shl
      i32.add
      local.get $5
      i64.store
      local.get $6
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $7
   i32.store
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $7
   local.get $1
   i32.const 3
   i32.const 0
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/aspect/aspect/StressTestAspect#postContractCall (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 56
   memory.fill
   local.get $3
   i32.const 8096
   i32.store
   i32.const 8096
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 9824
    i32.const 103
    i32.const 59
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store offset=4
   local.get $4
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store
   local.get $3
   local.get $0
   call $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.parseMethodSig
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 2
   i32.const 71
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 9904
   i32.store
   local.get $0
   i32.const 0
   i32.const 9904
   call $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.computeMethodSig
   call $~lib/array/Array<~lib/string/String>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 9952
   i32.store
   local.get $0
   i32.const 1
   i32.const 9952
   call $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.computeMethodSig
   call $~lib/array/Array<~lib/string/String>#__set
   local.get $4
   local.get $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $0
   local.get $3
   call $~lib/array/Array<~lib/string/String>#includes
   if
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store
    local.get $4
    i32.const 8
    i32.const 72
    call $~lib/rt/itcms/__new
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $4
    i32.store offset=4
    local.get $4
    i64.const 0
    i64.store
    local.get $5
    local.get $4
    i32.store offset=4
    local.get $4
    i64.const -1
    i64.store
    local.get $5
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    local.get $4
    i32.store offset=32
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/@artela/aspect-libs/package/sys.hostApi.trace
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i32.const 0
    i32.const 20
    memory.fill
    local.get $5
    local.get $4
    i32.store
    local.get $5
    i32.const 10000
    i32.store offset=4
    local.get $5
    local.get $4
    i32.const 10000
    call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
    local.tee $4
    i32.store offset=8
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
    local.tee $5
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $5
    local.get $4
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
    call $~lib/@artela/aspect-libs/hostapi/trace-api/__TraceApi__.queryCallTree
    local.set $4
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
    local.tee $5
    i32.store offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $4
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    local.get $4
    i32.store offset=36
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 10064
    i32.store offset=4
    i32.const 2
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 10064
    call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/tx-verify-input/TxVerifyInput>@varargs
    local.tee $6
    i32.store offset=40
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i32.const 0
    i32.store
    local.get $4
    local.get $3
    i32.store
    local.get $3
    i32.load offset=20
    local.set $3
    local.get $4
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.load
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#keys
    local.tee $4
    i32.store offset=44
    loop $for-loop|0
     local.get $1
     local.get $3
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $4
      i32.store
      local.get $5
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 10512
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i32.const 0
      i32.store
      local.get $5
      local.get $4
      i32.store
      local.get $1
      local.get $4
      i32.load offset=12
      i32.ge_u
      if
       i32.const 1248
       i32.const 8928
       i32.const 114
       i32.const 42
       call $~lib/builtins/abort
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $4
      i32.store
      local.get $4
      i32.load offset=4
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $2
      local.get $5
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.load
      local.tee $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 10512
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i32.const 0
      i32.store
      local.get $5
      local.get $8
      i32.store
      local.get $8
      local.get $2
      local.get $2
      i32.wrap_i64
      i32.const -1028477379
      i32.mul
      i32.const 374761401
      i32.add
      i32.const 17
      i32.rotl
      i32.const 668265263
      i32.mul
      local.get $2
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const -1028477379
      i32.mul
      i32.add
      i32.const 17
      i32.rotl
      i32.const 668265263
      i32.mul
      local.tee $5
      i32.const 15
      i32.shr_u
      local.get $5
      i32.xor
      i32.const -2048144777
      i32.mul
      local.tee $5
      i32.const 13
      i32.shr_u
      local.get $5
      i32.xor
      i32.const -1028477379
      i32.mul
      local.tee $5
      i32.const 16
      i32.shr_u
      local.get $5
      i32.xor
      call $~lib/map/Map<u64,~lib/@artela/aspect-libs/proto/aspect/v2/eth-call-message/EthCallMessage>#find
      local.tee $5
      i32.eqz
      if
       i32.const 10096
       i32.const 10160
       i32.const 105
       i32.const 17
       call $~lib/builtins/abort
       unreachable
      end
      local.get $5
      i32.load offset=8
      local.set $5
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $7
      local.get $5
      i32.store offset=48
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.load offset=8
      local.tee $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      call $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.parseMethodSig
      local.tee $5
      i32.store offset=52
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $0
      local.get $5
      call $~lib/array/Array<~lib/string/String>#includes
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 24
   memory.fill
   local.get $4
   local.get $0
   i32.store
   local.get $4
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load offset=12
   local.set $5
   local.get $4
   local.get $0
   i32.store offset=12
   local.get $4
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=8
   local.get $4
   local.get $2
   i32.load offset=8
   local.tee $2
   i32.store offset=4
   local.get $4
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store
   local.get $4
   local.get $2
   i32.store
   local.get $2
   i32.load offset=12
   local.set $2
   local.get $4
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $5
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    i32.store offset=12
    local.get $5
    local.get $0
    i32.load
    local.tee $2
    i32.store offset=8
    local.get $5
    local.get $2
    i32.load offset=8
    local.tee $4
    i32.store offset=4
    local.get $5
    local.get $0
    i32.store offset=8
    local.get $5
    local.get $0
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=12
    local.tee $3
    i32.const 1
    i32.add
    i32.store offset=12
    local.get $5
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $2
    local.get $4
    i32.store
    local.get $3
    local.get $4
    i32.load offset=12
    i32.ge_u
    if
     i32.const 1248
     i32.const 8928
     i32.const 114
     i32.const 42
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $4
    i32.store
    local.get $4
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $3
    local.get $2
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=16
   local.get $2
   local.get $0
   i32.store offset=20
   local.get $3
   local.set $2
   loop $while-continue|0
    local.get $2
    i32.const 127
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $0
     i32.load offset=4
     local.tee $4
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $4
     local.get $2
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $2
     i32.const 7
     i32.shr_u
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store offset=4
   local.get $5
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $4
   local.get $2
   i32.store8
   local.get $5
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   local.get $5
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load offset=4
   local.set $2
   i32.const 3
   global.set $~argumentsLength
   local.get $1
   local.get $4
   local.get $2
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $3
   local.get $0
   i32.load offset=4
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.tee $5
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $5
   memory.copy
  end
  local.get $4
  local.get $1
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $5
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 14
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 2512
    i32.const 22
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
   i32.eqz
   if
    local.get $0
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i32.const 0
    i32.store offset=8
    local.get $0
    i32.const 24
    i32.const 12
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store offset=4
    local.get $0
    i32.const 3424
    i32.store offset=8
    local.get $1
    i32.const 3424
    i32.store
    local.get $1
    i32.const 3424
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3488
    i32.store offset=8
    local.get $1
    i32.const 3488
    i32.store offset=4
    local.get $1
    i32.const 3488
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3552
    i32.store offset=8
    local.get $1
    i32.const 3552
    i32.store offset=8
    local.get $1
    i32.const 3552
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3616
    i32.store offset=8
    local.get $1
    i32.const 3616
    i32.store offset=12
    local.get $1
    i32.const 3616
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3680
    i32.store offset=8
    local.get $1
    i32.const 3680
    i32.store offset=16
    local.get $1
    i32.const 3680
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3760
    i32.store offset=8
    local.get $1
    i32.const 3760
    i32.store offset=20
    local.get $1
    i32.const 3760
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    global.set $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 3840
    i32.const 14
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 20
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 3968
    i32.const 16
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 16
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-state-api/AspectStateApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4096
    i32.const 18
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 15
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-property-api/AspectPropertyApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4224
    i32.const 16
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 18
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/aspect-transient-storage-api/AspectTransientStorageApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4368
    i32.const 18
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 22
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4784
    i32.const 18
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 5456
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $3
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.get $1
  local.get $2
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 10512
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 10512
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 26
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 9040
    i32.const 28
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 43312
  i32.const 43360
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 10512
  i32.lt_s
  if
   i32.const 43312
   i32.const 43360
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1552
   i32.const 1600
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
