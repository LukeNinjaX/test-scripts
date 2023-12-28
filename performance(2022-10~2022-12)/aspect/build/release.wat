(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (result i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i32)))
 (type $9 (func (param i32 i32 i32 i32) (result i32)))
 (type $10 (func (param i32) (result i64)))
 (type $11 (func (param i32 i32 i64)))
 (type $12 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "runtime-api" "__RuntimeContextApi__.query" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.query (param i32) (result i32)))
 (import "util-api" "__UtilApi__.sLog" (func $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog (param i32)))
 (import "runtime-api" "__RuntimeContextApi__.get" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get (param i32) (result i32)))
 (import "runtime-api" "__RuntimeContextApi__.set" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.set (param i32) (result i32)))
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
 (global $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/key-tx/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.utils (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.schedule (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.crypto (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.hostApi.util (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/package/sys.aspect.property (mut i32) (i32.const 0))
 (global $assembly/index/aspect (mut i32) (i32.const 0))
 (global $assembly/index/entry (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 42180))
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
 (data $24 (i32.const 2604) "|")
 (data $24.1 (i32.const 2616) "\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00s\00c\00h\00e\00d\00u\00l\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $25 (i32.const 2732) "|")
 (data $25.1 (i32.const 2744) "\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00r\00u\00n\00t\00i\00m\00e\00-\00a\00p\00i\00.\00t\00s")
 (data $26 (i32.const 2860) "<")
 (data $26.1 (i32.const 2872) "\02\00\00\00(\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00t\00r\00i\00n\00g\00D\00a\00t\00a")
 (data $27 (i32.const 2924) "<")
 (data $27.1 (i32.const 2936) "\02\00\00\00\"\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00I\00n\00t\00D\00a\00t\00a")
 (data $28 (i32.const 2988) "<")
 (data $28.1 (i32.const 3000) "\02\00\00\00$\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00o\00o\00l\00D\00a\00t\00a")
 (data $29 (i32.const 3052) "<")
 (data $29.1 (i32.const 3064) "\02\00\00\00&\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00y\00t\00e\00s\00D\00a\00t\00a")
 (data $30 (i32.const 3116) "L")
 (data $30.1 (i32.const 3128) "\02\00\00\002\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00a\00t\00e\00C\00h\00a\00n\00g\00e\00Q\00u\00e\00r\00y")
 (data $31 (i32.const 3196) "L")
 (data $31.1 (i32.const 3208) "\02\00\00\000\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00C\00a\00l\00l\00S\00t\00a\00c\00k\00Q\00u\00e\00r\00y")
 (data $32 (i32.const 3276) "|")
 (data $32.1 (i32.const 3288) "\02\00\00\00b\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00m\00o\00n\00/\00h\00e\00l\00p\00e\00r\00/\00m\00e\00s\00s\00a\00g\00e\00.\00t\00s")
 (data $33 (i32.const 3404) ",")
 (data $33.1 (i32.const 3416) "\02\00\00\00\16\00\00\00o\00n\00T\00x\00R\00e\00c\00e\00i\00v\00e")
 (data $34 (i32.const 3452) "<")
 (data $34.1 (i32.const 3464) "\02\00\00\00\"\00\00\00o\00n\00B\00l\00o\00c\00k\00I\00n\00i\00t\00i\00a\00l\00i\00z\00e")
 (data $35 (i32.const 3516) ",")
 (data $35.1 (i32.const 3528) "\02\00\00\00\14\00\00\00o\00n\00T\00x\00V\00e\00r\00i\00f\00y")
 (data $36 (i32.const 3564) ",")
 (data $36.1 (i32.const 3576) "\02\00\00\00\18\00\00\00p\00r\00e\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $37 (i32.const 3612) "<")
 (data $37.1 (i32.const 3624) "\02\00\00\00\1e\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $38 (i32.const 3676) "<")
 (data $38.1 (i32.const 3688) "\02\00\00\00 \00\00\00p\00o\00s\00t\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $39 (i32.const 3740) ",")
 (data $39.1 (i32.const 3752) "\02\00\00\00\1a\00\00\00p\00o\00s\00t\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $40 (i32.const 3788) ",")
 (data $40.1 (i32.const 3800) "\02\00\00\00\14\00\00\00o\00n\00T\00x\00C\00o\00m\00m\00i\00t")
 (data $41 (i32.const 3836) "<")
 (data $41.1 (i32.const 3848) "\02\00\00\00\1e\00\00\00o\00n\00B\00l\00o\00c\00k\00F\00i\00n\00a\00l\00i\00z\00e")
 (data $42 (i32.const 3900) ",")
 (data $42.1 (i32.const 3912) "\02\00\00\00\12\00\00\00o\00p\00e\00r\00a\00t\00i\00o\00n")
 (data $43 (i32.const 3948) ",")
 (data $43.1 (i32.const 3960) "\02\00\00\00\0e\00\00\00i\00s\00O\00w\00n\00e\00r")
 (data $44 (i32.const 3996) "<")
 (data $44.1 (i32.const 4008) "\02\00\00\00\"\00\00\00o\00n\00C\00o\00n\00t\00r\00a\00c\00t\00B\00i\00n\00d\00i\00n\00g")
 (data $45 (i32.const 4060) "|")
 (data $45.1 (i32.const 4072) "\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00e\00v\00m\00-\00c\00a\00l\00l\00-\00a\00p\00i\00.\00t\00s")
 (data $46 (i32.const 4188) "|")
 (data $46.1 (i32.const 4200) "\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00s\00t\00a\00t\00e\00d\00b\00-\00a\00p\00i\00.\00t\00s")
 (data $47 (i32.const 4316) "l")
 (data $47.1 (i32.const 4328) "\02\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00u\00t\00i\00l\00-\00a\00p\00i\00.\00t\00s")
 (data $48 (i32.const 4428) "\8c")
 (data $48.1 (i32.const 4440) "\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00s\00t\00a\00t\00e\00.\00t\00s")
 (data $49 (i32.const 4572) ",")
 (data $49.1 (i32.const 4584) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $50 (i32.const 4620) "l")
 (data $50.1 (i32.const 4632) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00t\00y\00p\00e\00s\00/\00a\00s\00p\00e\00c\00t\00-\00e\00n\00t\00r\00y\00.\00t\00s")
 (data $51 (i32.const 4732) "<")
 (data $51.1 (i32.const 4744) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $52 (i32.const 4796) "\1c")
 (data $52.1 (i32.const 4808) "\01")
 (data $53 (i32.const 4828) "\1c")
 (data $53.1 (i32.const 4840) "\01")
 (data $54 (i32.const 4860) ",")
 (data $54.1 (i32.const 4872) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $55 (i32.const 4908) "\1c")
 (data $55.1 (i32.const 4920) "\01")
 (data $56 (i32.const 4940) "\1c")
 (data $56.1 (i32.const 4952) "9\00\00\00\08\00\00\00\01")
 (data $57 (i32.const 4972) ",")
 (data $57.1 (i32.const 4984) "\02\00\00\00\14\00\00\00t\00x\00 \00i\00s\00 \00n\00u\00l\00l")
 (data $58 (i32.const 5020) ",")
 (data $58.1 (i32.const 5032) "\02\00\00\00\0e\00\00\00s\00u\00c\00c\00e\00s\00s")
 (data $59 (i32.const 5068) "\1c")
 (data $59.1 (i32.const 5080) ">\00\00\00\08\00\00\00\02")
 (data $60 (i32.const 5100) "\1c")
 (data $60.1 (i32.const 5112) "C\00\00\00\08\00\00\00\03")
 (data $61 (i32.const 5132) "\1c")
 (data $61.1 (i32.const 5144) "D\00\00\00\08\00\00\00\04")
 (data $62 (i32.const 5164) "<")
 (data $62.1 (i32.const 5176) "\02\00\00\00&\00\00\00c\00u\00r\00r\00I\00n\00n\00e\00r\00T\00x\00 \00i\00s\00 \00n\00u\00l\00l")
 (data $63 (i32.const 5228) "\1c")
 (data $63.1 (i32.const 5240) "P\00\00\00\08\00\00\00\05")
 (data $64 (i32.const 5260) ",")
 (data $64.1 (i32.const 5272) "\02\00\00\00\0e\00\00\00m\00e\00t\00h\00o\00d\00 ")
 (data $65 (i32.const 5308) "L")
 (data $65.1 (i32.const 5320) "\02\00\00\00:\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data $66 (i32.const 5388) "\1c")
 (data $66.1 (i32.const 5400) "U\00\00\00\08\00\00\00\06")
 (data $67 (i32.const 5420) "l")
 (data $67.1 (i32.const 5432) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s")
 (data $68 (i32.const 5532) "<")
 (data $68.1 (i32.const 5544) "\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 ")
 (data $69 (i32.const 5596) "|")
 (data $69.1 (i32.const 5608) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $70 (i32.const 5724) "<")
 (data $70.1 (i32.const 5736) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $71 (i32.const 5788) "\1c")
 (data $71.1 (i32.const 5800) "\02\00\00\00\02\00\00\000")
 (data $72 (i32.const 5820) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $73 (i32.const 6220) "\1c\04")
 (data $73.1 (i32.const 6232) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $74 (i32.const 7276) "\\")
 (data $74.1 (i32.const 7288) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $75 (i32.const 7372) ",")
 (data $75.1 (i32.const 7384) "\02\00\00\00\12\00\00\00s\00t\00a\00t\00e\00-\00k\00e\00y")
 (data $76 (i32.const 7420) "\1c")
 (data $76.1 (i32.const 7432) "[\00\00\00\08\00\00\00\07")
 (data $77 (i32.const 7452) "\1c")
 (data $77.1 (i32.const 7464) "^\00\00\00\08\00\00\00\08")
 (data $78 (i32.const 7484) "\1c")
 (data $78.1 (i32.const 7496) "_\00\00\00\08\00\00\00\t")
 (data $79 (i32.const 7516) "\1c")
 (data $79.1 (i32.const 7528) "`\00\00\00\08\00\00\00\n")
 (data $80 (i32.const 7548) "L")
 (data $80.1 (i32.const 7560) "\02\00\00\00<\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00b\00e\00f\00o\00r\00e\00 \00v\00a\00l\00u\00e\00:\00 ")
 (data $81 (i32.const 7628) "<")
 (data $81.1 (i32.const 7640) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $82 (i32.const 7692) "\8c")
 (data $82.1 (i32.const 7704) "\02\00\00\00x\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00c\00o\00n\00t\00e\00x\00t\00.\00t\00s")
 (data $83 (i32.const 7836) ",")
 (data $83.1 (i32.const 7848) "\02\00\00\00\16\00\00\00c\00o\00n\00t\00e\00x\00t\00-\00k\00e\00y")
 (data $84 (i32.const 7884) "|")
 (data $84.1 (i32.const 7896) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $85 (i32.const 8012) "\1c")
 (data $85.1 (i32.const 8024) "\02\00\00\00\04\00\00\00t\00x")
 (data $86 (i32.const 8044) "\1c")
 (data $86.1 (i32.const 8056) "\01")
 (data $87 (i32.const 8076) ",")
 (data $87.1 (i32.const 8088) "\02\00\00\00\0e\00\00\00c\00o\00n\00t\00e\00x\00t")
 (data $88 (i32.const 8124) "\1c")
 (data $88.1 (i32.const 8136) "\02\00\00\00\02\00\00\00^")
 (data $89 (i32.const 8156) "<")
 (data $89.1 (i32.const 8168) "\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\001")
 (data $90 (i32.const 8220) "<")
 (data $90.1 (i32.const 8232) "\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\002")
 (data $91 (i32.const 8284) "<")
 (data $91.1 (i32.const 8296) "\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\003")
 (data $92 (i32.const 8348) "\\")
 (data $92.1 (i32.const 8360) "\02\00\00\00L\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00b\00e\00f\00o\00r\00e\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00:\00 ")
 (data $93 (i32.const 8444) "\1c")
 (data $93.1 (i32.const 8456) "\02\00\00\00\02\00\00\001")
 (data $94 (i32.const 8476) "\1c")
 (data $94.1 (i32.const 8488) "o\00\00\00\08\00\00\00\0b")
 (data $95 (i32.const 8508) "\\")
 (data $95.1 (i32.const 8520) "\02\00\00\00J\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00a\00f\00t\00e\00r\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00:\00 ")
 (data $96 (i32.const 8604) "\\")
 (data $96.1 (i32.const 8616) "\02\00\00\00F\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00c\00o\00n\00t\00e\00x\00t\00-\00k\00e\00y\00 \00v\00a\00l\00u\00e\00:\00 ")
 (data $97 (i32.const 8700) "\\")
 (data $97.1 (i32.const 8712) "\02\00\00\00H\00\00\00M\00i\00s\00s\00i\00n\00g\00 \00f\00o\00r\00k\00(\00)\00 \00b\00e\00f\00o\00r\00e\00 \00l\00d\00e\00l\00i\00m\00(\00)\00 \00c\00a\00l\00l\00.")
 (data $98 (i32.const 8796) "l")
 (data $98.1 (i32.const 8808) "\02\00\00\00Z\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00S\00i\00z\00e\00r\00.\00t\00s")
 (data $99 (i32.const 8908) ",")
 (data $99.1 (i32.const 8920) "\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data $100 (i32.const 8960) "p\00\00\00 \00\00\00 \00\00\00 ")
 (data $100.1 (i32.const 8984) " \00\00\00\00\00\00\00\02\01\00\00\02\t\00\00A\00\00\00\00\00\00\00 ")
 (data $100.2 (i32.const 9020) " \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 ")
 (data $100.3 (i32.const 9168) "\02A\00\00\02A\00\00\00\00\00\00\02\02\00\00 ")
 (data $100.4 (i32.const 9200) " \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 ")
 (data $100.5 (i32.const 9240) " \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
 (data $100.6 (i32.const 9316) " \00\00\00 ")
 (data $100.7 (i32.const 9356) " \00\00\00 \00\00\00\00\00\00\00\01\01\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data $100.8 (i32.const 9396) " \00\00\00 ")
 (table $0 12 12 funcref)
 (elem $0 (i32.const 1) $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect.decode $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse.encode $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest.encode $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse.decode $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest.encode)
 (export "execute" (func $assembly/index/execute))
 (export "isBlockLevel" (func $assembly/index/isBlockLevel))
 (export "isTransactionLevel" (func $assembly/index/isTransactionLevel))
 (export "isTransactionVerifier" (func $assembly/index/isTransactionVerifier))
 (export "allocate" (func $assembly/index/allocate))
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
  block $__inlined_func$~lib/rt/itcms/Object#unlink$1206
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
    i32.const 42180
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
    br $__inlined_func$~lib/rt/itcms/Object#unlink$1206
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
   i32.const 8960
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
   i32.const 8964
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
  i32.const 42192
  i32.const 0
  i32.store
  i32.const 43760
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
    i32.const 42192
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
      i32.const 42192
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
  i32.const 42192
  i32.const 43764
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 42192
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
      i32.const 42180
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
    i32.const 42180
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
     i32.const 42180
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
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   memory.size
   i32.const 16
   i32.shl
   i32.const 42180
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
   i32.const 9412
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
   i32.const 9412
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
   i32.const 9412
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
   i32.const 9412
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
  i32.const 42208
  i32.const 42256
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
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  local.get $3
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.or
  else
   i32.const 1
  end
  i32.eqz
  if
   loop $do-loop|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $assembly/index/allocate (param $0 i32) (result i32)
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$95
   local.get $0
   i32.eqz
   if
    local.get $1
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 5808
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$95
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
     i32.const 5820
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 5820
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
    i32.const 5820
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
    i32.const 5820
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
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#get:aspect (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
    i32.const 9412
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 31
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
    i32.const 7712
    i32.const 27
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
   i32.const 9412
   i32.lt_s
   if
    i32.const 42208
    i32.const 42256
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
   i32.const 9412
   i32.lt_s
   if
    i32.const 42208
    i32.const 42256
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
    i32.const 5440
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
 (func $~lib/as-proto/assembly/Reader/Reader#int64@override (param $0 i32) (result i64)
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
   i32.const 9412
   i32.lt_s
   if
    i32.const 42208
    i32.const 42256
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
   i32.const 9412
   i32.lt_s
   if
    i32.const 42208
    i32.const 42256
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
    i32.const 5440
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
     i32.const 9412
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
    i32.const 9412
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bool@override (param $0 i32) (param $1 i32)
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
     i32.const 9412
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
     local.get $0
     i32.load offset=4
     local.get $1
     i32.const 0
     i32.ne
     i32.store8
     local.get $2
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $2
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store
    local.get $1
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $1
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 42208
  i32.const 42256
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
     i32.const 9412
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
    i32.const 9412
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#fork@override (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $1
     i32.const 4
     i32.ne
     if
      local.get $1
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.const 24
     memory.fill
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
     i32.load offset=12
     local.set $3
     local.get $2
     local.get $0
     i32.store offset=16
     local.get $2
     local.get $0
     i32.load
     local.tee $1
     i32.store offset=12
     local.get $2
     local.get $1
     i32.load offset=8
     local.tee $1
     i32.store offset=8
     local.get $1
     call $~lib/array/Array<~lib/string/String>#get:length
     local.get $3
     i32.le_s
     if (result i32)
      i32.const 0
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=16
      local.get $1
      local.get $0
      i32.load
      local.tee $2
      i32.store offset=12
      local.get $1
      local.get $2
      i32.load offset=8
      local.tee $2
      i32.store offset=8
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $1
      local.get $0
      i32.store offset=16
      local.get $0
      local.get $0
      i32.load offset=12
      local.tee $1
      i32.const 1
      i32.add
      i32.store offset=12
      local.get $2
      local.get $1
      call $~lib/array/Array<i32>#__get
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=20
     loop $while-continue|0
      local.get $1
      i32.const 127
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store offset=8
       local.get $2
       local.get $0
       i32.store offset=12
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
     i32.store offset=8
     local.get $2
     local.get $0
     i32.store offset=12
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
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
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
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $2
    local.get $0
    i32.load
    call $~lib/array/Array<u32>#push
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=12
    local.tee $1
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
    call $~lib/array/Array<~lib/string/String>#get:length
    call $~lib/array/Array<u32>#push
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $0
    i32.store
    local.get $0
    i32.const 0
    call $~lib/array/Array<u32>#push
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#string@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
     i32.const 24
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     local.set $3
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
     local.get $2
     call $~lib/array/Array<~lib/string/String>#get:length
     local.get $3
     i32.le_s
     if (result i32)
      i32.const 0
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $4
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
      local.tee $3
      i32.store offset=4
      local.get $4
      local.get $0
      i32.store offset=8
      local.get $4
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $0
      i32.load offset=12
      local.tee $2
      i32.const 1
      i32.add
      i32.store offset=12
      local.get $3
      local.get $2
      call $~lib/array/Array<i32>#__get
     end
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=16
     local.get $3
     local.get $0
     i32.store offset=20
     local.get $2
     local.set $3
     loop $while-continue|0
      local.get $3
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
       local.get $3
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8
       local.get $3
       i32.const 7
       i32.shr_u
       local.set $3
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
     local.get $3
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
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     local.get $1
     local.get $4
     local.get $3
     call $~lib/string/String.UTF8.encodeUnsafe
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $2
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
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
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
    local.get $1
    i32.store
    local.get $1
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.add
    local.set $4
    loop $while-continue|00
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
       local.get $3
       i32.const 1
       i32.add
      else
       local.get $2
       i32.const 2048
       i32.lt_u
       if (result i32)
        local.get $3
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
          local.get $3
          i32.const 4
          i32.add
          local.set $3
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|00
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
      br $while-continue|00
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store offset=4
    local.get $1
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.store
    local.get $1
    local.get $3
    call $~lib/array/Array<u32>#push
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
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
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $3
    local.get $0
    i32.load
    i32.add
    i32.store
    local.get $1
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#ldelim@override (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $folding-inner1
   block $folding-inner0
    block $default
     block $case1
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      local.tee $1
      i32.const 4
      i32.ne
      if
       local.get $1
       i32.const 6
       i32.eq
       br_if $case1
       br $default
      end
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.load offset=4
     local.tee $1
     i32.store
     local.get $1
     call $~lib/array/Array<~lib/string/String>#get:length
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=12
      local.tee $1
      i32.store
      local.get $1
      call $~lib/array/Array<~lib/string/String>#get:length
     else
      i32.const 0
     end
     i32.eqz
     if
      i32.const 8720
      i32.const 8816
      i32.const 126
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $0
     i32.load
     local.set $3
     local.get $1
     local.get $0
     i32.store offset=4
     local.get $1
     local.get $0
     i32.load offset=4
     local.tee $2
     i32.store
     local.get $1
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store
     local.get $1
     local.get $2
     i32.store
     local.get $2
     i32.load offset=12
     local.tee $1
     i32.const 0
     i32.le_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $2
     i32.store
     local.get $2
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.sub
     local.tee $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $1
     local.get $4
     local.get $2
     i32.store
     local.get $2
     local.get $5
     i32.store offset=12
     local.get $4
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=12
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store
     local.get $2
     local.get $4
     i32.store
     local.get $4
     i32.load offset=12
     local.tee $2
     i32.const 0
     i32.le_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $4
     i32.store
     local.get $4
     i32.load offset=4
     local.get $2
     i32.const 1
     i32.sub
     local.tee $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     local.get $5
     local.get $4
     i32.store
     local.get $4
     local.get $6
     i32.store offset=12
     local.get $5
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i32.const 0
     i32.store
     local.get $5
     local.get $4
     i32.store
     local.get $2
     local.get $4
     i32.load offset=12
     i32.ge_u
     if
      local.get $2
      i32.const 0
      i32.lt_s
      if
       i32.const 1248
       i32.const 4880
       i32.const 130
       i32.const 22
       call $~lib/builtins/abort
       unreachable
      end
      local.get $4
      local.get $2
      i32.const 1
      i32.add
      local.tee $5
      i32.const 2
      i32.const 1
      call $~lib/array/ensureCapacity
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      local.get $5
      i32.store offset=12
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $4
     i32.store
     local.get $4
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.get $3
     local.get $1
     i32.sub
     local.tee $1
     i32.store
     local.get $5
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
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
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    unreachable
   end
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8928
  i32.const 4880
  i32.const 271
  i32.const 18
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#int32@override (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.tee $3
     i32.const 4
     i32.ne
     if
      local.get $3
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     if
      local.get $3
      local.get $0
      i32.store
      local.get $3
      local.get $0
      i32.store offset=4
      local.get $1
      i64.extend_i32_s
      local.set $2
      loop $while-continue|0
       local.get $2
       i64.const 127
       i64.gt_u
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store offset=8
        local.get $1
        local.get $0
        i32.store offset=12
        local.get $0
        local.get $0
        i32.load offset=4
        local.tee $1
        i32.const 1
        i32.add
        i32.store offset=4
        local.get $1
        local.get $2
        i64.const 127
        i64.and
        i64.const 128
        i64.or
        i64.store8
        local.get $2
        i64.const 7
        i64.shr_u
        local.set $2
        br $while-continue|0
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=8
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $0
      i32.load offset=4
      local.tee $0
      i32.const 1
      i32.add
      i32.store offset=4
      local.get $0
      local.get $2
      i64.store8
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=16
      loop $while-continue|1
       local.get $1
       i32.const 127
       i32.gt_u
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $0
        i32.store offset=8
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
        br $while-continue|1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store offset=8
      local.get $3
      local.get $0
      i32.store offset=12
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
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i64.const 0
    i64.store
    local.get $3
    i32.const 0
    i32.store offset=8
    local.get $1
    i32.const 0
    i32.lt_s
    if
     local.get $3
     local.get $0
     i32.store
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $0
     i32.load
     i32.const 10
     i32.add
     i32.store
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=8
     local.get $3
     local.get $0
     i32.store
     local.get $3
     local.get $0
     i32.store offset=4
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
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 42208
  i32.const 42256
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
  global.get $assembly/index/entry
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 1552
  call $~lib/rt/itcms/__visit
  i32.const 8928
  call $~lib/rt/itcms/__visit
  i32.const 7904
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 7648
  call $~lib/rt/itcms/__visit
  i32.const 6240
  call $~lib/rt/itcms/__visit
  i32.const 7296
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
  global.get $~lib/@artela/aspect-libs/package/sys.utils
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
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.schedule
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
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.property
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
  i32.const 3424
  call $~lib/rt/itcms/__visit
  i32.const 3472
  call $~lib/rt/itcms/__visit
  i32.const 3536
  call $~lib/rt/itcms/__visit
  i32.const 3584
  call $~lib/rt/itcms/__visit
  i32.const 3632
  call $~lib/rt/itcms/__visit
  i32.const 3696
  call $~lib/rt/itcms/__visit
  i32.const 3760
  call $~lib/rt/itcms/__visit
  i32.const 3808
  call $~lib/rt/itcms/__visit
  i32.const 3856
  call $~lib/rt/itcms/__visit
  i32.const 3920
  call $~lib/rt/itcms/__visit
  i32.const 3968
  call $~lib/rt/itcms/__visit
  i32.const 4016
  call $~lib/rt/itcms/__visit
  global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
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
  global.get $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil
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
  global.get $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/key-tx/convertUtil
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
  global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
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
  global.get $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
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
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
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
 )
 (func $~lib/error/Error~visit (param $0 i32)
  (local $1 i32)
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
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry~visit (param $0 i32)
  (local $1 i32)
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
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit (param $0 i32)
  (local $1 i32)
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
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $folding-inner8
   block $folding-inner7
    block $folding-inner6
     block $folding-inner5
      block $folding-inner4
       block $folding-inner3
        block $folding-inner2
         block $folding-inner1
          block $invalid
           block $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest
            block $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap
             block $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/string/String>
              block $~lib/@artela/aspect-libs/common/key-tx/MappingKey
               block $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>
                block $~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented
                 block $~lib/@artela/aspect-libs/common/key-tx/TxKey
                  block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<~lib/string/String>
                   block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<~lib/string/String>
                    block $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>
                     block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<i32>
                      block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<i32>
                       block $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx
                        block $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx
                         block $~lib/@artela/aspect-libs/common/authority-base/ScheduleAble
                          block $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx
                           block $~lib/@artela/aspect-libs/common/authority-base/ReceiptContextAccessible
                            block $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx
                             block $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx
                              block $~lib/@artela/aspect-libs/common/authority-base/TraceAccessible
                               block $~lib/@artela/aspect-libs/common/authority-base/JustInTimeCallable
                                block $~lib/@artela/aspect-libs/common/authority-base/EnvContextAccessible
                                 block $~lib/@artela/aspect-libs/common/authority-base/StateDBAccessible
                                  block $~lib/@artela/aspect-libs/common/authority-base/AspectStateModifiable
                                   block $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx
                                    block $~lib/@artela/aspect-libs/common/authority-base/BlockContextAccessible
                                     block $~lib/@artela/aspect-libs/common/authority-base/TxContextAccessible
                                      block $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx
                                       block $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData
                                        block $~lib/@artela/aspect-libs/common/authority-base/StaticCallable
                                         block $~lib/@artela/aspect-libs/common/authority-base/AspectStateReadonly
                                          block $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo
                                           block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction
                                            block $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>
                                             block $~lib/array/Array<~lib/string/String>
                                              block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction
                                               block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect
                                                block $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse
                                                 block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header
                                                  block $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier
                                                   block $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation
                                                    block $~lib/@artela/aspect-libs/types/aspect-entry/Entry
                                                     block $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock
                                                      block $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase
                                                       block $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction
                                                        block $assembly/aspect/aspect/StoreAspect
                                                         block $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState
                                                          block $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState
                                                           block $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty
                                                            block $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext
                                                             block $~lib/@artela/aspect-libs/components/context/tx-context/ReceiptContext
                                                              block $~lib/@artela/aspect-libs/components/context/tx-context/TxContext
                                                               block $~lib/@artela/aspect-libs/common/authority-base/TraceCtx
                                                                block $~lib/@artela/aspect-libs/components/context/tx-context/TraceContext
                                                                 block $~lib/@artela/aspect-libs/components/context/block/BlockContext
                                                                  block $~lib/@artela/aspect-libs/components/context/environment/EnvContext
                                                                   block $~lib/@artela/aspect-libs/components/evm/call/JustInTimeCaller
                                                                    block $~lib/@artela/aspect-libs/components/evm/call/StaticCaller
                                                                     block $~lib/@artela/aspect-libs/components/scheduler/schedule-service/ScheduleManager
                                                                      block $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil
                                                                       block $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi
                                                                        block $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi
                                                                         block $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi
                                                                          block $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi
                                                                           block $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi
                                                                            block $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi
                                                                             block $~lib/error/Error
                                                                              block $~lib/@artela/aspect-libs/common/helper/message/MessageUtil
                                                                               block $~lib/as-proto/assembly/Reader/Reader
                                                                                block $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer
                                                                                 block $~lib/as-proto/assembly/Writer/Writer
                                                                                  block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter
                                                                                   block $~lib/string/String
                                                                                    block $~lib/arraybuffer/ArrayBuffer
                                                                                     block $~lib/object/Object
                                                                                      local.get $0
                                                                                      i32.const 8
                                                                                      i32.sub
                                                                                      i32.load
                                                                                      br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner7 $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter $~lib/as-proto/assembly/Writer/Writer $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer $folding-inner1 $folding-inner1 $folding-inner7 $folding-inner4 $~lib/as-proto/assembly/Reader/Reader $~lib/@artela/aspect-libs/common/helper/message/MessageUtil $~lib/error/Error $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil $~lib/@artela/aspect-libs/components/scheduler/schedule-service/ScheduleManager $folding-inner7 $~lib/@artela/aspect-libs/components/evm/call/StaticCaller $~lib/@artela/aspect-libs/components/evm/call/JustInTimeCaller $~lib/@artela/aspect-libs/components/context/environment/EnvContext $~lib/@artela/aspect-libs/components/context/block/BlockContext $~lib/@artela/aspect-libs/components/context/tx-context/TraceContext $~lib/@artela/aspect-libs/common/authority-base/TraceCtx $~lib/@artela/aspect-libs/components/context/tx-context/TxContext $~lib/@artela/aspect-libs/components/context/tx-context/ReceiptContext $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState $assembly/aspect/aspect/StoreAspect $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock $~lib/@artela/aspect-libs/types/aspect-entry/Entry $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier $folding-inner2 $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header $folding-inner7 $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse $folding-inner8 $folding-inner2 $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction $folding-inner2 $~lib/array/Array<~lib/string/String> $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple> $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction $folding-inner1 $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo $folding-inner2 $folding-inner3 $folding-inner7 $~lib/@artela/aspect-libs/common/authority-base/AspectStateReadonly $~lib/@artela/aspect-libs/common/authority-base/StaticCallable $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData $folding-inner3 $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx $~lib/@artela/aspect-libs/common/authority-base/TxContextAccessible $~lib/@artela/aspect-libs/common/authority-base/BlockContextAccessible $folding-inner7 $folding-inner3 $folding-inner3 $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx $~lib/@artela/aspect-libs/common/authority-base/AspectStateModifiable $~lib/@artela/aspect-libs/common/authority-base/StateDBAccessible $~lib/@artela/aspect-libs/common/authority-base/EnvContextAccessible $folding-inner7 $~lib/@artela/aspect-libs/common/authority-base/JustInTimeCallable $~lib/@artela/aspect-libs/common/authority-base/TraceAccessible $folding-inner7 $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx $~lib/@artela/aspect-libs/common/authority-base/ReceiptContextAccessible $folding-inner3 $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx $~lib/@artela/aspect-libs/common/authority-base/ScheduleAble $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx $folding-inner3 $folding-inner4 $folding-inner4 $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<i32> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<i32> $folding-inner7 $folding-inner3 $folding-inner2 $folding-inner8 $folding-inner3 $folding-inner3 $folding-inner3 $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<~lib/string/String> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<~lib/string/String> $folding-inner7 $folding-inner7 $~lib/@artela/aspect-libs/common/key-tx/TxKey $~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented $folding-inner2 $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented> $~lib/@artela/aspect-libs/common/key-tx/MappingKey $folding-inner2 $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/string/String> $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest $folding-inner3 $invalid
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
                                                                                  br $folding-inner4
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
                                                                                br $folding-inner5
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
                                                                             call $~lib/error/Error~visit
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
                                                    call $~lib/@artela/aspect-libs/types/aspect-entry/Entry~visit
                                                    return
                                                   end
                                                   return
                                                  end
                                                  return
                                                 end
                                                 return
                                                end
                                                local.get $0
                                                call $~lib/error/Error~visit
                                                return
                                               end
                                               local.get $0
                                               call $~lib/@artela/aspect-libs/types/aspect-entry/Entry~visit
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
                                              i32.load offset=16
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
                                              i32.load offset=44
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=48
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=64
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=80
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=88
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=92
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=96
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=100
                                              local.tee $1
                                              if
                                               local.get $1
                                               call $~lib/rt/itcms/__visit
                                              end
                                              local.get $0
                                              i32.load offset=104
                                              local.tee $0
                                              if
                                               local.get $0
                                               call $~lib/rt/itcms/__visit
                                              end
                                              return
                                             end
                                             local.get $0
                                             call $~lib/array/Array<~lib/string/String>~visit
                                             return
                                            end
                                            local.get $0
                                            call $~lib/array/Array<~lib/string/String>~visit
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
                                           i32.load offset=48
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
                    br $folding-inner5
                   end
                   return
                  end
                  return
                 end
                 local.get $0
                 call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit
                 return
                end
                return
               end
               return
              end
              local.get $0
              call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit
              return
             end
             return
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
           br $folding-inner4
          end
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 9412
         i32.lt_s
         br_if $folding-inner6
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
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         return
        end
        local.get $0
        call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit
        return
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9412
       i32.lt_s
       br_if $folding-inner6
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
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       return
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
    i32.const 42208
    i32.const 42256
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
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
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
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
   i32.const 9412
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
   i32.const 9412
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
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/common/key-tx/convertUtil
   call $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance
   global.set $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
   global.set $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
   global.set $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
   global.set $~lib/@artela/aspect-libs/package/sys.utils
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
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
    i32.const 9412
    i32.lt_s
    br_if $folding-inner1
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
    i32.const 4080
    i32.const 25
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
   call $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.schedule
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance
   global.set $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
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
    i32.const 9412
    i32.lt_s
    br_if $folding-inner1
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
    i32.const 4208
    i32.const 78
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.const 0
    i32.const 32
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 4448
    i32.const 45
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
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.const 35
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
   global.set $assembly/index/aspect
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/aspect
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 16
   i32.const 39
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
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
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
   i32.store
   local.get $1
   local.get $0
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
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $assembly/index/entry
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 9412
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
   i32.const 9412
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
  i32.const 42208
  i32.const 42256
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 20
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
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 43
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 42
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store offset=8
  local.get $1
  i32.const 6
  i32.add
  local.get $2
  i32.load offset=4
  call $~lib/string/String.UTF8.decodeUnsafe
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
  global.get $~lib/memory/__stack_pointer
  i32.const 16
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   local.get $0
   i32.const 0
   local.get $1
   local.get $3
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 5
  i32.const 44
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
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 9
  i32.const 1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
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
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $1
   i32.store
   local.get $1
   local.get $0
   i32.store8 offset=4
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.load
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   i32.store offset=4
   local.get $2
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
   i32.const 9412
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
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
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 8
   i32.const 56
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
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
     local.get $2
     i32.load8_u
     local.set $5
     local.get $4
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i32.const 0
     i32.store
     local.get $4
     local.get $3
     i32.store
     local.get $1
     local.get $3
     i32.load offset=8
     i32.ge_u
     if
      i32.const 1248
      i32.const 4752
      i32.const 178
      i32.const 45
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $3
     i32.store
     local.get $1
     local.get $3
     i32.load offset=4
     i32.add
     local.get $5
     i32.store8
     local.get $4
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
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
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $7
  i64.const 0
  i64.store
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $7
  i32.const 108
  i32.const 49
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
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=32
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=36
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=40
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=44
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=48
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=64
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  i64.store offset=72
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=80
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=88
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=92
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=96
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=100
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=104
  local.get $7
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $7
  local.get $0
  i32.store
  local.get $7
  local.get $0
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
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=16
  local.get $7
  i32.const 1696
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
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=32
  local.get $7
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=36
  local.get $7
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=40
  local.get $7
  i32.const 1696
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
  i32.store offset=44
  local.get $7
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $7
  local.get $2
  i32.store offset=48
  local.get $7
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  i64.store offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=64
  local.get $7
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  i64.store offset=72
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=80
  local.get $7
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=84
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $7
  local.get $3
  i32.store offset=88
  local.get $7
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1696
  i32.store offset=8
  local.get $7
  i32.const 1696
  i32.store offset=92
  local.get $7
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $7
  local.get $4
  i32.store offset=96
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
  i32.store offset=100
  local.get $7
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $7
  local.get $6
  i32.store offset=104
  local.get $7
  local.get $6
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
    i32.const 4880
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
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $0
  i32.load offset=12
  local.tee $2
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
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   block $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor@varargs$11 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 20
     memory.fill
     global.get $~lib/memory/__stack_pointer
     i32.const 1696
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 51
     i32.const 4848
     call $~lib/rt/__newArray
     local.tee $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 1696
     i32.store offset=12
     local.get $3
     local.get $2
     i32.store offset=16
     local.get $3
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.const 1696
     i32.store offset=8
     local.get $3
     i32.const 1696
     i32.store
     local.get $3
     i32.const 1696
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
     i32.store offset=4
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
     br $__inlined_func$~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor@varargs$11
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
       call $~lib/as-proto/assembly/Reader/Reader#string@override
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
      i32.store offset=12
      local.get $3
      local.get $2
      i32.load offset=4
      local.tee $4
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
      local.get $4
      local.get $3
      call $~lib/array/Array<~lib/string/String>#push
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.const 32
   memory.fill
   local.get $1
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
    local.get $1
    local.get $0
    i32.load
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 1696
   i32.store
   local.get $4
   i32.const 1696
   i32.store offset=4
   local.get $4
   i32.const 1696
   i32.store offset=8
   local.get $4
   i32.const 1696
   i32.store offset=12
   local.get $4
   i32.const 1696
   i32.store offset=16
   local.get $4
   i32.const 1696
   i32.store offset=20
   local.get $4
   i32.const 1696
   i32.store offset=24
   i32.const 0
   global.set $~argumentsLength
   local.get $4
   local.get $4
   i32.const 116
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 116
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
   i32.const 1696
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $5
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.const 4816
   call $~lib/rt/__newArray
   local.tee $6
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $7
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $8
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $9
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store offset=56
   local.get $4
   local.get $2
   i32.store offset=60
   local.get $4
   i32.const 1696
   i32.store offset=64
   local.get $4
   i32.const 1696
   i32.store offset=68
   local.get $4
   i32.const 1696
   i32.store offset=72
   local.get $4
   i32.const 1696
   i32.store offset=76
   local.get $4
   local.get $3
   i32.store offset=80
   local.get $4
   local.get $5
   i32.store offset=84
   local.get $4
   i32.const 1696
   i32.store offset=88
   local.get $4
   i32.const 1696
   i32.store offset=92
   local.get $4
   local.get $6
   i32.store offset=96
   local.get $4
   i32.const 1696
   i32.store offset=100
   local.get $4
   local.get $7
   i32.store offset=104
   local.get $4
   local.get $8
   i32.store offset=108
   local.get $4
   local.get $9
   i32.store offset=112
   local.get $2
   local.get $3
   local.get $5
   local.get $6
   local.get $7
   local.get $8
   local.get $9
   call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 116
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
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
     block $case19|1
      block $case18|1
       block $case17|1
        block $case16|1
         block $case15|1
          block $case14|1
           block $case13|1
            block $case12|1
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
                         local.tee $2
                         i32.const 3
                         i32.shr_u
                         i32.const 1
                         i32.sub
                         br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1 $case12|1 $case13|1 $case14|1 $case15|1 $case16|1 $case17|1 $case18|1 $case19|1
                        end
                        global.get $~lib/memory/__stack_pointer
                        local.tee $2
                        local.get $3
                        i32.store
                        local.get $2
                        local.get $0
                        i32.store offset=8
                        local.get $0
                        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                        local.set $2
                        global.get $~lib/memory/__stack_pointer
                        local.get $2
                        i32.store offset=4
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
                       i32.store offset=4
                       local.get $3
                       local.get $0
                       call $~lib/as-proto/assembly/Reader/Reader#int64@override
                       i64.store offset=8
                       br $while-continue|0
                      end
                      global.get $~lib/memory/__stack_pointer
                      local.tee $2
                      local.get $3
                      i32.store
                      local.get $2
                      local.get $0
                      i32.store offset=8
                      local.get $0
                      call $~lib/as-proto/assembly/Reader/Reader#string@override
                      local.set $2
                      global.get $~lib/memory/__stack_pointer
                      local.get $2
                      i32.store offset=4
                      local.get $3
                      local.get $2
                      i32.store offset=16
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
                     i32.store offset=4
                     local.get $3
                     local.get $0
                     call $~lib/as-proto/assembly/Reader/Reader#int64@override
                     i64.store offset=24
                     br $while-continue|0
                    end
                    global.get $~lib/memory/__stack_pointer
                    local.tee $2
                    local.get $3
                    i32.store
                    local.get $2
                    local.get $0
                    i32.store offset=8
                    local.get $0
                    call $~lib/as-proto/assembly/Reader/Reader#string@override
                    local.set $2
                    global.get $~lib/memory/__stack_pointer
                    local.get $2
                    i32.store offset=4
                    local.get $3
                    local.get $2
                    i32.store offset=32
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
                   i32.store offset=8
                   local.get $0
                   call $~lib/as-proto/assembly/Reader/Reader#string@override
                   local.set $2
                   global.get $~lib/memory/__stack_pointer
                   local.get $2
                   i32.store offset=4
                   local.get $3
                   local.get $2
                   i32.store offset=36
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
                  i32.store offset=8
                  local.get $0
                  call $~lib/as-proto/assembly/Reader/Reader#string@override
                  local.set $2
                  global.get $~lib/memory/__stack_pointer
                  local.get $2
                  i32.store offset=4
                  local.get $3
                  local.get $2
                  i32.store offset=40
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
                 i32.store offset=8
                 local.get $0
                 call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                 local.set $2
                 global.get $~lib/memory/__stack_pointer
                 local.get $2
                 i32.store offset=4
                 local.get $3
                 local.get $2
                 i32.store offset=44
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
                i32.store offset=8
                local.get $0
                call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                local.set $2
                global.get $~lib/memory/__stack_pointer
                local.get $2
                i32.store offset=4
                local.get $3
                local.get $2
                i32.store offset=48
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
               i32.store offset=4
               local.get $3
               local.get $0
               call $~lib/as-proto/assembly/Reader/Reader#int64@override
               i64.store offset=56
               br $while-continue|0
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $3
              i32.store
              local.get $2
              local.get $0
              i32.store offset=8
              local.get $0
              call $~lib/as-proto/assembly/Reader/Reader#string@override
              local.set $2
              global.get $~lib/memory/__stack_pointer
              local.get $2
              i32.store offset=4
              local.get $3
              local.get $2
              i32.store offset=64
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
             i32.store offset=4
             local.get $3
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#int64@override
             i64.store offset=72
             br $while-continue|0
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            local.get $3
            i32.store
            local.get $2
            local.get $0
            i32.store offset=8
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $2
            global.get $~lib/memory/__stack_pointer
            local.get $2
            i32.store offset=4
            local.get $3
            local.get $2
            i32.store offset=80
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
           i32.store offset=4
           local.get $3
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint32@override
           i32.store offset=84
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          local.get $3
          i32.store offset=8
          local.get $2
          local.get $3
          i32.load offset=88
          local.tee $5
          i32.store
          local.get $2
          local.get $0
          i32.store offset=8
          local.get $2
          local.get $0
          i32.store offset=12
          local.get $0
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple.decode
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store offset=4
          local.get $5
          local.get $2
          call $~lib/array/Array<~lib/string/String>#push
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $3
         i32.store
         local.get $2
         local.get $0
         i32.store offset=8
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#string@override
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=4
         local.get $3
         local.get $2
         i32.store offset=92
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
        i32.store offset=8
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=4
        local.get $3
        local.get $2
        i32.store offset=96
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
       i32.store offset=8
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=4
       local.get $3
       local.get $2
       i32.store offset=100
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
      i32.store offset=8
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      local.get $3
      local.get $2
      i32.store offset=104
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
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 52
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
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=20
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=48
  local.get $3
  i32.const 0
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
  i32.store
  local.get $3
  i32.const 1696
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
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  local.get $0
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
  i32.store offset=12
  local.get $3
  i32.const 1696
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
  i32.store offset=16
  local.get $3
  i32.const 1696
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=20
  local.get $3
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i64.const 0
  i64.store offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $2
  i32.store offset=48
  local.get $3
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 1696
   i32.store
   local.get $4
   i32.const 1696
   i32.store offset=4
   local.get $4
   i32.const 1696
   i32.store offset=8
   local.get $4
   i32.const 1696
   i32.store offset=12
   i32.const 0
   global.set $~argumentsLength
   local.get $4
   i32.const 60
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 60
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $6
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 54
   i32.const 4928
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store offset=28
   local.get $1
   i32.const 1696
   i32.store offset=32
   local.get $1
   i32.const 1696
   i32.store offset=36
   local.get $1
   local.get $5
   i32.store offset=40
   local.get $1
   i32.const 1696
   i32.store offset=44
   local.get $1
   i32.const 1696
   i32.store offset=48
   local.get $1
   local.get $6
   i32.store offset=52
   local.get $1
   local.get $7
   i32.store offset=56
   local.get $5
   local.get $6
   local.get $7
   call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 60
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $1
   i32.store offset=16
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load
    i32.gt_u
    if
     local.get $4
     local.get $0
     i32.store
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
                br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1 $case9|1 $case10|1
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $4
               local.get $1
               i32.store
               local.get $4
               local.get $0
               i32.store offset=8
               local.get $0
               call $~lib/as-proto/assembly/Reader/Reader#string@override
               local.set $4
               global.get $~lib/memory/__stack_pointer
               local.get $4
               i32.store offset=4
               local.get $1
               local.get $4
               i32.store
               local.get $1
               local.get $4
               i32.const 0
               call $~lib/rt/itcms/__link
               br $while-continue|0
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              local.get $1
              i32.store
              local.get $4
              local.get $0
              i32.store offset=8
              local.get $0
              call $~lib/as-proto/assembly/Reader/Reader#string@override
              local.set $4
              global.get $~lib/memory/__stack_pointer
              local.get $4
              i32.store offset=4
              local.get $1
              local.get $4
              i32.store offset=4
              local.get $1
              local.get $4
              i32.const 0
              call $~lib/rt/itcms/__link
              br $while-continue|0
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             local.get $1
             i32.store
             local.get $4
             local.get $0
             i32.store offset=8
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#bytes@override
             local.set $4
             global.get $~lib/memory/__stack_pointer
             local.get $4
             i32.store offset=4
             local.get $1
             local.get $4
             i32.store offset=8
             local.get $1
             local.get $4
             i32.const 0
             call $~lib/rt/itcms/__link
             br $while-continue|0
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $1
            i32.store
            local.get $4
            local.get $0
            i32.store offset=8
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $4
            global.get $~lib/memory/__stack_pointer
            local.get $4
            i32.store offset=4
            local.get $1
            local.get $4
            i32.store offset=12
            local.get $1
            local.get $4
            i32.const 0
            call $~lib/rt/itcms/__link
            br $while-continue|0
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $1
           i32.store
           local.get $4
           local.get $0
           i32.store offset=8
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#string@override
           local.set $4
           global.get $~lib/memory/__stack_pointer
           local.get $4
           i32.store offset=4
           local.get $1
           local.get $4
           i32.store offset=16
           local.get $1
           local.get $4
           i32.const 0
           call $~lib/rt/itcms/__link
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          local.get $1
          i32.store
          local.get $4
          local.get $0
          i32.store offset=8
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $4
          global.get $~lib/memory/__stack_pointer
          local.get $4
          i32.store offset=4
          local.get $1
          local.get $4
          i32.store offset=20
          local.get $1
          local.get $4
          i32.const 0
          call $~lib/rt/itcms/__link
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         local.get $1
         i32.store
         local.get $4
         local.get $0
         i32.store offset=4
         local.get $1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#int64@override
         i64.store offset=24
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $1
        i32.store
        local.get $4
        local.get $0
        i32.store offset=4
        local.get $1
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#int64@override
        i64.store offset=32
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $1
       i32.store
       local.get $4
       local.get $0
       i32.store offset=4
       local.get $1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#int64@override
       i64.store offset=40
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $1
      i32.store offset=4
      local.get $4
      local.get $1
      i32.load offset=48
      local.tee $5
      i32.store
      local.get $4
      local.get $0
      i32.store offset=4
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#int64@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 9412
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
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 8
  i32.const 47
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
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 1696
   i32.store
   i32.const 0
   global.set $~argumentsLength
   local.get $2
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
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
   i32.const 1696
   i32.store offset=12
   local.get $4
   local.get $3
   i32.store offset=16
   i32.const 1696
   local.get $3
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 20
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
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $2
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
       local.tee $2
       local.get $3
       i32.store
       local.get $2
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#string@override
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
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
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
   local.get $3
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect.decode (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 9412
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
   i32.const 9412
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
   i32.const 16
   i32.const 48
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
   i32.const 0
   i32.store offset=12
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
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
   i32.const 0
   i32.store offset=8
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
   i32.const 0
   i32.store offset=8
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
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $4
   i32.const 0
   i32.store offset=12
   local.get $4
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
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
         local.get $4
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
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode
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
        local.tee $2
        local.get $4
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
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction.decode
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $4
        local.get $2
        i32.store offset=4
        local.get $4
        local.get $2
        i32.const 0
        call $~lib/rt/itcms/__link
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $4
       i32.store
       local.get $2
       local.get $0
       i32.store offset=12
       local.get $2
       local.get $0
       i32.store offset=16
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.set $2
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9412
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i64.const 0
       i64.store
       local.get $3
       i32.const 0
       i32.store offset=8
       local.get $2
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
        local.get $2
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
       i32.const 9412
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       i64.const 0
       i64.store
       local.get $5
       i32.const 24
       i32.const 55
       call $~lib/rt/itcms/__new
       local.tee $5
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store
       local.get $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store offset=8
       local.get $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store offset=16
       local.get $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store
       local.get $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store offset=8
       local.get $6
       local.get $5
       i32.store offset=4
       local.get $5
       i64.const 0
       i64.store offset=16
       local.get $6
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $3
       local.get $5
       i32.store offset=4
       loop $while-continue|00
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $0
        i32.store
        local.get $2
        local.get $0
        i32.load
        i32.gt_u
        if
         local.get $3
         local.get $0
         i32.store
         block $case3|11
          block $case2|12
           block $case1|13
            block $case0|14
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#uint32@override
             local.tee $3
             i32.const 3
             i32.shr_u
             i32.const 1
             i32.sub
             br_table $case0|14 $case1|13 $case2|12 $case3|11
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $3
            local.get $5
            i32.store
            local.get $3
            local.get $0
            i32.store offset=8
            local.get $5
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#int64@override
            i64.store
            br $while-continue|00
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           local.get $5
           i32.store
           local.get $3
           local.get $0
           i32.store offset=8
           local.get $5
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#int64@override
           i64.store offset=8
           br $while-continue|00
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          local.get $5
          i32.store
          local.get $3
          local.get $0
          i32.store offset=8
          local.get $5
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#int64@override
          i64.store offset=16
          br $while-continue|00
         end
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $0
         local.get $3
         i32.const 7
         i32.and
         call $~lib/as-proto/assembly/Reader/Reader#skipType@override
         br $while-continue|00
        end
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $4
       local.get $5
       i32.store offset=8
       local.get $4
       local.get $5
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $4
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
      call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $4
      local.get $2
      i32.store offset=12
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
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 9412
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
   block $__inlined_func$~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>$14 (result i32)
    local.get $3
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.const 9412
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
     call_indirect (type $2)
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     br $__inlined_func$~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>$14
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4960
  i32.store offset=8
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  i32.const 4960
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 8
  i32.const 46
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8
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
  local.get $0
  i32.store8
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
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 12
  i32.const 45
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
  local.get $3
  i32.store offset=4
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
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   local.get $1
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.store
   i32.const 0
   local.get $1
   call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=4
   local.get $0
   i32.const 1696
   i32.const 0
   call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load8_u
  call $~lib/as-proto/assembly/Writer/Writer#bool@override
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#set:length (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 9412
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
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $1
  i32.store
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $3
  local.get $1
  local.get $2
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
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
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store offset=4
   local.get $4
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 4
   i32.const 66
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
   local.get $3
   i32.store offset=8
   local.get $4
   local.get $3
   i32.store
   local.get $4
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
   local.get $2
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.tee $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 5040
   i32.store
   i32.const 1
   i32.const 5040
   call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   local.get $0
   i32.const 1696
   i32.const 0
   call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
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
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $__inlined_func$~lib/string/String#concat$1219 (result i32)
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
    i32.const 9412
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
     br $__inlined_func$~lib/string/String#concat$1219
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  call $~lib/as-proto/assembly/Writer/Writer#string@override
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
  local.tee $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 20
   memory.fill
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   local.get $2
   if
    local.get $3
    local.get $1
    i32.store
    local.get $1
    i32.const 10
    call $~lib/as-proto/assembly/Writer/Writer#uint32@override
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/as-proto/assembly/Writer/Writer#fork@override
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
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
    local.get $1
    i32.store
    local.get $1
    i32.const 8
    call $~lib/as-proto/assembly/Writer/Writer#uint32@override
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=4
    local.get $1
    local.get $2
    i32.load8_u
    call $~lib/as-proto/assembly/Writer/Writer#bool@override
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
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $2
    i32.store offset=4
    local.get $1
    local.get $2
    call $~lib/as-proto/assembly/Writer/Writer#string@override
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
   end
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
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.store offset=8
   local.get $1
   local.get $2
   call $~lib/as-proto/assembly/Writer/Writer#string@override
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store offset=16
   local.get $0
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.const 26
    call $~lib/as-proto/assembly/Writer/Writer#uint32@override
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/as-proto/assembly/Writer/Writer#fork@override
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=8
    local.get $0
    local.get $1
    call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 4752
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 216
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 9412
      i32.lt_s
      br_if $folding-inner3
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      i32.const 0
      i32.const 216
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
      local.get $3
      local.get $1
      call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load
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
      i32.const 4016
      i32.store offset=12
      local.get $1
      i32.const 4016
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.load offset=4
      else
       i32.const 0
      end
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       i32.store
       local.get $1
       local.get $2
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString
       local.tee $1
       i32.store offset=16
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load offset=4
       local.tee $0
       i32.store offset=24
       local.get $0
       i32.eqz
       if
        i32.const 2384
        i32.const 4640
        i32.const 57
        i32.const 19
        call $~lib/builtins/abort
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store
       local.get $2
       local.get $1
       i32.store offset=12
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 35
       i32.ne
       if
        unreachable
       end
       br $folding-inner1
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $1
      i32.store
      local.get $3
      i32.const 3968
      i32.store offset=12
      local.get $1
      i32.const 3968
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $2
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString
       local.tee $3
       i32.store offset=28
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       local.get $0
       i32.load offset=4
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=4
        local.tee $0
        i32.store offset=32
        local.get $0
        i32.eqz
        if
         i32.const 2384
         i32.const 4640
         i32.const 63
         i32.const 21
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store
        local.get $1
        local.get $3
        i32.store offset=12
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 35
        i32.eq
        br_if $folding-inner1
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $0
       i32.store
       local.get $0
       i32.load
       if
        local.get $4
        local.get $0
        i32.store offset=20
        local.get $4
        local.get $0
        i32.load
        local.tee $0
        i32.store offset=36
        local.get $0
        i32.eqz
        if
         i32.const 2384
         i32.const 4640
         i32.const 67
         i32.const 21
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store
        local.get $1
        local.get $3
        i32.store offset=12
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 35
        i32.eq
        br_if $folding-inner1
        unreachable
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $1
      i32.store
      local.get $3
      i32.const 3424
      i32.store offset=12
      local.get $1
      i32.const 3424
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $2
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
       local.tee $1
       i32.store offset=40
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       local.get $1
       i32.load
       if
        global.get $~lib/memory/__stack_pointer
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.load
        local.tee $1
        i32.store offset=48
        local.get $1
        i32.eqz
        if
         i32.const 2384
         i32.const 4640
         i32.const 78
         i32.const 37
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $1
        i32.store
        local.get $3
        i32.const 12
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9412
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i64.const 0
        i64.store
        local.get $3
        i32.const 0
        i32.store offset=8
        local.get $3
        i32.const 4
        i32.const 58
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
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $2
        local.get $3
        i32.store offset=52
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=4
        local.tee $0
        i32.store offset=56
        local.get $0
        i32.eqz
        if
         i32.const 2384
         i32.const 4640
         i32.const 79
         i32.const 26
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store
        local.get $1
        local.get $3
        i32.store offset=12
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        i32.const 35
        i32.ne
        if
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $0
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9412
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        i64.const 0
        i64.store
        local.get $1
        i32.const 1
        i32.const 61
        call $~lib/rt/itcms/__new
        local.tee $1
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $1
        i32.store offset=4
        local.get $1
        i32.const 0
        i32.store8
        local.get $2
        local.get $1
        i32.store offset=4
        local.get $1
        i32.const 1
        i32.store8
        local.get $2
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $0
        local.get $1
        i32.store offset=60
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        local.tee $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 5040
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=72
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=8
        local.tee $2
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=64
        global.get $~lib/memory/__stack_pointer
        i32.const 5088
        i32.store offset=68
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 24
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9412
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i32.const 0
        i32.const 24
        memory.fill
        local.get $3
        i32.const 5040
        i32.store
        local.get $3
        i32.const 1
        i32.const 5040
        call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
        local.tee $3
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 5088
        i32.store offset=16
        global.get $~lib/memory/__stack_pointer
        local.get $2
        local.get $1
        i32.const 5088
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
        local.tee $0
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=12
        local.get $3
        local.get $2
        local.get $0
        call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
        local.set $0
        global.get $~lib/memory/__stack_pointer
        i32.const 24
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=44
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $0
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        local.tee $1
        i32.store
        local.get $0
        i32.const 4992
        i32.store offset=12
        local.get $0
        local.get $1
        i32.const 4992
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
        local.tee $0
        i32.store offset=44
       end
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $1
       i32.store
       local.get $3
       i32.const 3536
       i32.store offset=12
       local.get $1
       i32.const 3536
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $2
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
        local.tee $2
        i32.store offset=76
        global.get $~lib/memory/__stack_pointer
        local.set $1
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 9412
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        i64.const 0
        i64.store
        local.get $3
        i32.const 0
        i32.const 63
        call $~lib/rt/itcms/__new
        local.tee $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $3
        i32.store offset=4
        local.get $4
        local.get $3
        call $~lib/object/Object#constructor
        local.tee $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $1
        local.get $3
        i32.store offset=80
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        call $~lib/typedarray/Uint8Array#constructor
        local.tee $1
        i32.store offset=84
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store
        local.get $2
        i32.load offset=12
        if
         global.get $~lib/memory/__stack_pointer
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=12
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.load offset=12
         local.tee $2
         i32.store offset=88
         local.get $2
         i32.eqz
         if
          i32.const 2384
          i32.const 4640
          i32.const 94
          i32.const 27
          call $~lib/builtins/abort
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store
         local.get $1
         local.get $2
         i32.load offset=4
         local.tee $1
         i32.store offset=84
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $1
        i32.store
        local.get $2
        i32.const 5120
        i32.store offset=12
        i32.const 2
        global.set $~argumentsLength
        local.get $2
        local.get $1
        i32.const 5120
        call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
        local.tee $1
        i32.store offset=92
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store offset=64
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load offset=12
        local.tee $0
        i32.store offset=96
        local.get $0
        i32.eqz
        if
         i32.const 2384
         i32.const 4640
         i32.const 97
         i32.const 22
         call $~lib/builtins/abort
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $0
        i32.store
        local.get $2
        local.get $3
        i32.store offset=12
        local.get $2
        local.get $1
        i32.store offset=64
        local.get $2
        local.get $1
        i32.load
        i32.store offset=20
        br $folding-inner2
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $1
        i32.store
        local.get $3
        i32.const 3584
        i32.store offset=12
        local.get $1
        i32.const 3584
        call $~lib/string/String.__eq
        if
         global.get $~lib/memory/__stack_pointer
         local.set $1
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 9412
         i32.lt_s
         br_if $folding-inner3
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         i32.const 0
         i32.store
         local.get $2
         i32.const 0
         i32.const 69
         call $~lib/rt/itcms/__new
         local.tee $2
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $1
         local.get $2
         i32.store offset=108
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load offset=4
         local.tee $0
         i32.store offset=112
         local.get $0
         i32.eqz
         if
          i32.const 2384
          i32.const 4640
          i32.const 108
          i32.const 7
          call $~lib/builtins/abort
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $0
         i32.store
         local.get $1
         local.get $2
         i32.store offset=12
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         i32.const 35
         i32.ne
         if
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $0
         global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
         local.tee $1
         i32.store
         local.get $0
         local.get $1
         call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
         local.tee $0
         i32.store offset=44
        else
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $1
         i32.store
         local.get $3
         i32.const 3632
         i32.store offset=12
         local.get $1
         i32.const 3632
         call $~lib/string/String.__eq
         if
          global.get $~lib/memory/__stack_pointer
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $2
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
          local.tee $1
          i32.store offset=116
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store
          local.get $1
          i32.load offset=4
          if
           global.get $~lib/memory/__stack_pointer
           local.set $2
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store offset=12
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.load offset=4
           local.tee $1
           i32.store offset=120
           local.get $1
           i32.eqz
           if
            i32.const 2384
            i32.const 4640
            i32.const 115
            i32.const 44
            call $~lib/builtins/abort
            unreachable
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           local.get $1
           i32.store
           local.get $3
           i32.const 12
           i32.sub
           global.set $~lib/memory/__stack_pointer
           global.get $~lib/memory/__stack_pointer
           i32.const 9412
           i32.lt_s
           br_if $folding-inner3
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           i64.const 0
           i64.store
           local.get $3
           i32.const 0
           i32.store offset=8
           local.get $3
           i32.const 4
           i32.const 73
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
           global.get $~lib/memory/__stack_pointer
           i32.const 12
           i32.add
           global.set $~lib/memory/__stack_pointer
           local.get $2
           local.get $3
           i32.store offset=124
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store offset=20
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.load offset=4
           local.tee $0
           i32.store offset=128
           local.get $0
           i32.eqz
           if
            i32.const 2384
            i32.const 4640
            i32.const 116
            i32.const 9
            call $~lib/builtins/abort
            unreachable
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $0
           i32.store
           local.get $1
           local.get $3
           i32.store offset=12
           block $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preContractCall@override$571
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            i32.const 35
            i32.eq
            if
             local.get $3
             call $assembly/aspect/aspect/StoreAspect#preContractCall
             br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preContractCall@override$571
            end
            unreachable
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $0
           global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
           local.tee $1
           i32.store
           local.get $0
           local.get $1
           call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
           local.tee $0
           i32.store offset=44
          else
           global.get $~lib/memory/__stack_pointer
           local.tee $0
           global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
           local.tee $1
           i32.store
           local.get $0
           i32.const 5184
           i32.store offset=12
           local.get $0
           local.get $1
           i32.const 5184
           call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
           local.tee $0
           i32.store offset=44
          end
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          local.get $1
          i32.store
          local.get $3
          i32.const 3696
          i32.store offset=12
          local.get $1
          i32.const 3696
          call $~lib/string/String.__eq
          if
           global.get $~lib/memory/__stack_pointer
           global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $2
           call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
           local.tee $1
           i32.store offset=132
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store
           local.get $1
           i32.load offset=4
           if
            global.get $~lib/memory/__stack_pointer
            local.set $2
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store offset=12
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.load offset=4
            local.tee $1
            i32.store offset=136
            local.get $1
            i32.eqz
            if
             i32.const 2384
             i32.const 4640
             i32.const 124
             i32.const 45
             call $~lib/builtins/abort
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $3
            local.get $1
            i32.store
            local.get $3
            i32.const 12
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 9412
            i32.lt_s
            br_if $folding-inner3
            global.get $~lib/memory/__stack_pointer
            local.tee $3
            i64.const 0
            i64.store
            local.get $3
            i32.const 0
            i32.store offset=8
            local.get $3
            i32.const 4
            i32.const 76
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
            global.get $~lib/memory/__stack_pointer
            i32.const 12
            i32.add
            global.set $~lib/memory/__stack_pointer
            local.get $2
            local.get $3
            i32.store offset=140
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.store offset=20
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.load offset=4
            local.tee $0
            i32.store offset=144
            local.get $0
            i32.eqz
            if
             i32.const 2384
             i32.const 4640
             i32.const 125
             i32.const 9
             call $~lib/builtins/abort
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.store
            local.get $1
            local.get $3
            i32.store offset=12
            block $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postContractCall@override$1220
             local.get $0
             i32.const 8
             i32.sub
             i32.load
             i32.const 35
             i32.eq
             if
              local.get $1
              i32.const 24
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 9412
              i32.lt_s
              br_if $folding-inner3
              global.get $~lib/memory/__stack_pointer
              local.tee $0
              i32.const 0
              i32.const 24
              memory.fill
              local.get $0
              local.get $3
              i32.store offset=16
              call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#get:aspect
              local.set $1
              global.get $~lib/memory/__stack_pointer
              local.get $1
              i32.store offset=4
              global.get $~lib/memory/__stack_pointer
              i32.const 7856
              i32.store offset=8
              global.get $~lib/memory/__stack_pointer
              i32.const 1696
              i32.store offset=12
              call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String>
              local.set $1
              global.get $~lib/memory/__stack_pointer
              local.get $1
              i32.store
              local.get $0
              local.get $1
              call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
              local.tee $0
              i32.store offset=20
              global.get $~lib/memory/__stack_pointer
              i32.const 8624
              i32.store offset=4
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store offset=8
              i32.const 8624
              local.get $0
              call $~lib/string/String.__concat
              local.set $0
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store
              local.get $0
              call $~lib/@artela/aspect-libs/package/sys.log
              global.get $~lib/memory/__stack_pointer
              i32.const 24
              i32.add
              global.set $~lib/memory/__stack_pointer
              br $__inlined_func$~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postContractCall@override$1220
             end
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $0
            global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
            local.tee $1
            i32.store
            local.get $0
            local.get $1
            call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
            local.tee $0
            i32.store offset=44
           else
            global.get $~lib/memory/__stack_pointer
            local.tee $0
            global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
            local.tee $1
            i32.store
            local.get $0
            i32.const 5184
            i32.store offset=12
            local.get $0
            local.get $1
            i32.const 5184
            call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
            local.tee $0
            i32.store offset=44
           end
          else
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           local.get $1
           i32.store
           local.get $3
           i32.const 3760
           i32.store offset=12
           local.get $1
           i32.const 3760
           call $~lib/string/String.__eq
           if
            global.get $~lib/memory/__stack_pointer
            local.set $1
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 9412
            i32.lt_s
            br_if $folding-inner3
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            i32.const 0
            i32.store
            local.get $2
            i32.const 0
            i32.const 77
            call $~lib/rt/itcms/__new
            local.tee $2
            i32.store
            global.get $~lib/memory/__stack_pointer
            i32.const 4
            i32.add
            global.set $~lib/memory/__stack_pointer
            local.get $1
            local.get $2
            i32.store offset=148
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.store offset=20
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.load offset=4
            local.tee $0
            i32.store offset=152
            local.get $0
            i32.eqz
            if
             i32.const 2384
             i32.const 4640
             i32.const 130
             i32.const 7
             call $~lib/builtins/abort
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $0
            i32.store
            local.get $1
            local.get $2
            i32.store offset=12
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            i32.const 35
            i32.ne
            if
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $0
            global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
            local.tee $1
            i32.store
            local.get $0
            local.get $1
            call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
            local.tee $0
            i32.store offset=44
           else
            global.get $~lib/memory/__stack_pointer
            local.tee $3
            local.get $1
            i32.store
            local.get $3
            i32.const 3808
            i32.store offset=12
            local.get $1
            i32.const 3808
            call $~lib/string/String.__eq
            if
             global.get $~lib/memory/__stack_pointer
             global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
             i32.store
             global.get $~lib/memory/__stack_pointer
             local.get $2
             call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
             local.tee $1
             i32.store offset=156
             global.get $~lib/memory/__stack_pointer
             local.get $1
             i32.store
             local.get $1
             i32.load
             if
              global.get $~lib/memory/__stack_pointer
              local.set $1
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 9412
              i32.lt_s
              br_if $folding-inner3
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              i32.const 0
              i32.store
              local.get $2
              i32.const 0
              i32.const 78
              call $~lib/rt/itcms/__new
              local.tee $2
              i32.store
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.add
              global.set $~lib/memory/__stack_pointer
              local.get $1
              local.get $2
              i32.store offset=160
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store offset=20
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.load offset=4
              local.tee $0
              i32.store offset=164
              local.get $0
              i32.eqz
              if
               i32.const 2384
               i32.const 4640
               i32.const 138
               i32.const 9
               call $~lib/builtins/abort
               unreachable
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $0
              i32.store
              local.get $1
              local.get $2
              i32.store offset=12
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              i32.const 35
              i32.ne
              if
               unreachable
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $0
              global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
              local.tee $1
              i32.store
              local.get $0
              local.get $1
              call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
              local.tee $0
              i32.store offset=44
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $0
              global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
              local.tee $1
              i32.store
              local.get $0
              i32.const 4992
              i32.store offset=12
              local.get $0
              local.get $1
              i32.const 4992
              call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
              local.tee $0
              i32.store offset=44
             end
            else
             global.get $~lib/memory/__stack_pointer
             local.tee $3
             local.get $1
             i32.store
             local.get $3
             i32.const 3920
             i32.store offset=12
             local.get $1
             i32.const 3920
             call $~lib/string/String.__eq
             if
              global.get $~lib/memory/__stack_pointer
              local.set $1
              global.get $~lib/memory/__stack_pointer
              global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
              i32.store
              global.get $~lib/memory/__stack_pointer
              i32.const 16
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 9412
              i32.lt_s
              br_if $folding-inner3
              global.get $~lib/memory/__stack_pointer
              local.tee $3
              i64.const 0
              i64.store
              local.get $3
              i64.const 0
              i64.store offset=8
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
              i32.store offset=12
              local.get $3
              call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
              local.set $2
              global.get $~lib/memory/__stack_pointer
              local.get $2
              i32.store offset=4
              global.get $~lib/memory/__stack_pointer
              i32.const 5248
              i32.store offset=8
              i32.const 2
              global.set $~argumentsLength
              local.get $2
              i32.const 5248
              call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
              local.set $2
              global.get $~lib/memory/__stack_pointer
              i32.const 16
              i32.add
              global.set $~lib/memory/__stack_pointer
              local.get $1
              local.get $2
              i32.store offset=168
              global.get $~lib/memory/__stack_pointer
              local.set $1
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 9412
              i32.lt_s
              br_if $folding-inner3
              global.get $~lib/memory/__stack_pointer
              local.tee $3
              i32.const 0
              i32.store
              local.get $3
              i32.const 0
              i32.const 81
              call $~lib/rt/itcms/__new
              local.tee $3
              i32.store
              global.get $~lib/memory/__stack_pointer
              i32.const 4
              i32.add
              global.set $~lib/memory/__stack_pointer
              local.get $1
              local.get $3
              i32.store offset=172
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store offset=64
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.load offset=8
              local.tee $0
              i32.store offset=176
              local.get $0
              i32.eqz
              if
               i32.const 2384
               i32.const 4640
               i32.const 144
               i32.const 19
               call $~lib/builtins/abort
               unreachable
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $0
              i32.store
              local.get $1
              local.get $3
              i32.store offset=12
              local.get $1
              local.get $2
              i32.store offset=64
              local.get $1
              local.get $2
              i32.load offset=48
              i32.store offset=20
              br $folding-inner2
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $2
              local.get $1
              i32.store
              local.get $2
              i32.const 3472
              i32.store offset=12
              local.get $1
              i32.const 3472
              call $~lib/string/String.__eq
              if
               global.get $~lib/memory/__stack_pointer
               local.set $1
               global.get $~lib/memory/__stack_pointer
               i32.const 4
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 9412
               i32.lt_s
               br_if $folding-inner3
               global.get $~lib/memory/__stack_pointer
               local.tee $2
               i32.const 0
               i32.store
               local.get $2
               i32.const 0
               i32.const 83
               call $~lib/rt/itcms/__new
               local.tee $2
               i32.store
               global.get $~lib/memory/__stack_pointer
               i32.const 4
               i32.add
               global.set $~lib/memory/__stack_pointer
               local.get $1
               local.get $2
               i32.store offset=200
               global.get $~lib/memory/__stack_pointer
               local.get $0
               i32.store offset=20
               global.get $~lib/memory/__stack_pointer
               local.get $0
               i32.load
               local.tee $0
               i32.store offset=204
               local.get $0
               i32.eqz
               if
                i32.const 2384
                i32.const 4640
                i32.const 153
                i32.const 7
                call $~lib/builtins/abort
                unreachable
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               local.get $0
               i32.store
               local.get $1
               local.get $2
               i32.store offset=12
               local.get $0
               i32.const 8
               i32.sub
               i32.load
               i32.const 35
               i32.ne
               if
                unreachable
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $0
               global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
               local.tee $1
               i32.store
               local.get $0
               local.get $1
               call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
               local.tee $0
               i32.store offset=44
              else
               global.get $~lib/memory/__stack_pointer
               local.tee $2
               local.get $1
               i32.store
               local.get $2
               i32.const 3856
               i32.store offset=12
               local.get $1
               i32.const 3856
               call $~lib/string/String.__eq
               if
                global.get $~lib/memory/__stack_pointer
                local.set $1
                global.get $~lib/memory/__stack_pointer
                i32.const 4
                i32.sub
                global.set $~lib/memory/__stack_pointer
                global.get $~lib/memory/__stack_pointer
                i32.const 9412
                i32.lt_s
                br_if $folding-inner3
                global.get $~lib/memory/__stack_pointer
                local.tee $2
                i32.const 0
                i32.store
                local.get $2
                i32.const 0
                i32.const 84
                call $~lib/rt/itcms/__new
                local.tee $2
                i32.store
                global.get $~lib/memory/__stack_pointer
                i32.const 4
                i32.add
                global.set $~lib/memory/__stack_pointer
                local.get $1
                local.get $2
                i32.store offset=208
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store offset=20
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.load
                local.tee $0
                i32.store offset=212
                local.get $0
                i32.eqz
                if
                 i32.const 2384
                 i32.const 4640
                 i32.const 157
                 i32.const 7
                 call $~lib/builtins/abort
                 unreachable
                end
                global.get $~lib/memory/__stack_pointer
                local.tee $1
                local.get $0
                i32.store
                local.get $1
                local.get $2
                i32.store offset=12
                local.get $0
                i32.const 8
                i32.sub
                i32.load
                i32.const 35
                i32.ne
                if
                 unreachable
                end
                global.get $~lib/memory/__stack_pointer
                local.tee $0
                global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
                local.tee $1
                i32.store
                local.get $0
                local.get $1
                call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
                local.tee $0
                i32.store offset=44
               else
                global.get $~lib/memory/__stack_pointer
                local.tee $0
                global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
                local.tee $2
                i32.store
                local.get $0
                i32.const 5280
                i32.store offset=68
                local.get $0
                local.get $1
                i32.store offset=72
                i32.const 5280
                local.get $1
                call $~lib/string/String.__concat
                local.set $1
                global.get $~lib/memory/__stack_pointer
                local.get $1
                i32.store offset=20
                global.get $~lib/memory/__stack_pointer
                i32.const 5328
                i32.store offset=64
                local.get $1
                i32.const 5328
                call $~lib/string/String.__concat
                local.set $1
                global.get $~lib/memory/__stack_pointer
                local.get $1
                i32.store offset=12
                local.get $0
                local.get $2
                local.get $1
                call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
                local.tee $0
                i32.store offset=44
               end
              end
             end
            end
           end
          end
         end
        end
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
      i32.store
      local.get $1
      local.get $0
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 9412
      i32.lt_s
      br_if $folding-inner3
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
      i32.const 5408
      i32.store offset=4
      local.get $1
      local.get $0
      i32.const 5408
      call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
      local.tee $0
      i32.store offset=8
      i32.const 0
      global.set $~argumentsLength
      global.get $~lib/memory/__stack_pointer
      call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
      local.tee $1
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $1
      local.get $0
      call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $1
      call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $folding-inner4
     end
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
     i32.store
     i32.const 1
     call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
     local.set $0
     br $folding-inner4
    end
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    drop
    unreachable
   end
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 216
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/execute (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  global.get $assembly/index/entry
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#execute
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/isBlockLevel (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   global.get $assembly/index/entry
   local.tee $1
   i32.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 0
   i32.ne
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/isTransactionLevel (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   global.get $assembly/index/entry
   local.tee $1
   i32.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load offset=4
   i32.const 0
   i32.ne
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/isTransactionVerifier (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   global.get $assembly/index/entry
   local.tee $1
   i32.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   i32.store
   local.get $0
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load offset=12
   i32.const 0
   i32.ne
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 5440
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 5440
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 5440
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 5552
   i32.store
   local.get $1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 5552
   local.get $0
   call $~lib/string/String.__concat
   i32.const 5440
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
    block $__inlined_func$~lib/util/string/isSpace$717 (result i32)
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
     br_if $__inlined_func$~lib/util/string/isSpace$717
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$717
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
      br $__inlined_func$~lib/util/string/isSpace$717
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
   local.get $0
   i32.const 43
   i32.eq
   local.get $0
   i32.const 45
   i32.eq
   local.tee $0
   i32.or
   if (result i32)
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u
    drop
    i32.const -1
    i32.const 1
    local.get $0
    select
   else
    i32.const 1
   end
   local.set $5
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
      local.tee $4
      i32.const 48
      i32.sub
      local.tee $0
      i32.const 10
      i32.ge_u
      if
       local.get $4
       i32.const 65
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $4
        i32.const 55
        i32.sub
       else
        local.get $4
        i32.const 87
        i32.sub
        local.get $4
        local.get $4
        i32.const 97
        i32.sub
        i32.const 25
        i32.le_u
        select
       end
       local.set $0
      end
      local.get $0
      i32.const 10
      i32.ge_u
      if
       local.get $1
       local.get $6
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $3
      i32.const 10
      i32.mul
      local.get $0
      i32.add
      local.set $3
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
   local.get $5
   i32.mul
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32> (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/util/string/strtol<i32>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.const 4
  i32.const 90
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
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.tee $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load
  call $~lib/as-proto/assembly/Writer/Writer#int32@override
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=8
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 18
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/as-proto/assembly/Writer/Writer#fork@override
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse.decode (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 9412
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
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 8
   i32.const 92
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
   i32.const 0
   i32.store offset=8
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
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store offset=4
   loop $while-continue|0
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
     block $case2|1
      block $case1|1
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.tee $2
       i32.const 3
       i32.shr_u
       local.tee $3
       i32.const 1
       i32.ne
       if
        local.get $3
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $1
       i32.store
       local.get $2
       local.get $0
       i32.store offset=12
       local.get $2
       local.get $0
       i32.store offset=16
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       local.set $2
       global.get $~lib/memory/__stack_pointer
       i32.const 16
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 9412
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i64.const 0
       i64.store
       local.get $3
       i64.const 0
       i64.store offset=8
       local.get $2
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
        local.get $2
        local.get $0
        i32.load
        i32.add
       end
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       i32.const 1696
       i32.store
       local.get $3
       i32.const 0
       i32.const 1696
       call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
       local.tee $5
       i32.store offset=4
       loop $while-continue|01
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $0
        i32.store
        local.get $2
        local.get $0
        i32.load
        i32.gt_u
        if
         local.get $3
         local.get $0
         i32.store
         block $case2|13
          block $case1|14
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#uint32@override
           local.tee $6
           i32.const 3
           i32.shr_u
           local.tee $3
           i32.const 1
           i32.ne
           if
            local.get $3
            i32.const 2
            i32.eq
            br_if $case1|14
            br $case2|13
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $3
           local.get $5
           i32.store
           local.get $3
           local.get $0
           i32.store offset=8
           block $__inlined_func$~lib/as-proto/assembly/Reader/Reader#bool@override$1221
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            i32.const 10
            i32.eq
            if
             local.get $3
             i32.const 4
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 9412
             i32.lt_s
             br_if $folding-inner0
             global.get $~lib/memory/__stack_pointer
             local.tee $3
             i32.const 0
             i32.store
             local.get $3
             local.get $0
             i32.store
             local.get $0
             call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
             i32.const 0
             i32.ne
             local.set $3
             global.get $~lib/memory/__stack_pointer
             i32.const 4
             i32.add
             global.set $~lib/memory/__stack_pointer
             br $__inlined_func$~lib/as-proto/assembly/Reader/Reader#bool@override$1221
            end
            unreachable
           end
           local.get $5
           local.get $3
           i32.store8
           br $while-continue|01
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $3
          local.get $5
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
          local.get $5
          local.get $3
          i32.store offset=4
          local.get $5
          local.get $3
          i32.const 0
          call $~lib/rt/itcms/__link
          br $while-continue|01
         end
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $0
         local.get $6
         i32.const 7
         i32.and
         call $~lib/as-proto/assembly/Reader/Reader#skipType@override
         br $while-continue|01
        end
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 16
       i32.add
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $1
       local.get $5
       i32.store
       local.get $1
       local.get $5
       i32.const 0
       call $~lib/rt/itcms/__link
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $1
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
      call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      local.get $1
      local.get $2
      i32.store offset=4
      local.get $1
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
   local.get $1
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $2
  i32.const 1696
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor
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
    local.get $0
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.tee $3
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
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
     i32.store
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
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#reload (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 52
   memory.fill
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store
   local.get $1
   local.get $2
   call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 7440
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.const 7440
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
   local.tee $2
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   block $__inlined_func$~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#query$17 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 28
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 28
     memory.fill
     local.get $3
     local.get $2
     i32.store
     local.get $3
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.const 8
     i32.const 93
     call $~lib/rt/itcms/__new
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.store
     local.get $1
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
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $4
     local.get $2
     i32.store offset=4
     local.get $4
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7472
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.const 7472
     call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
     local.tee $1
     i32.store offset=12
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
     local.tee $2
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     local.get $2
     local.get $1
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
     call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.query
     local.tee $1
     i32.eqz
     if
      i32.const 0
      i32.const 2752
      i32.const 46
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     i32.const 0
     global.set $~argumentsLength
     global.get $~lib/memory/__stack_pointer
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
     local.tee $2
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     local.get $1
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=24
     local.get $2
     call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 7504
     i32.store offset=8
     i32.const 2
     global.set $~argumentsLength
     local.get $1
     i32.const 7504
     call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 28
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     br $__inlined_func$~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#query$17
    end
    br $folding-inner1
   end
   local.tee $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.load
   local.tee $2
   i32.store offset=32
   local.get $2
   i32.eqz
   if
    i32.const 2384
    i32.const 4448
    i32.const 104
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.load8_u
   i32.eqz
   if
    i32.const 0
    i32.const 4448
    i32.const 105
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=16
   local.get $1
   i32.load offset=4
   if (result i32)
    local.get $2
    local.get $1
    i32.store offset=44
    local.get $2
    local.get $1
    i32.load offset=4
    local.tee $1
    i32.store offset=48
    local.get $1
    i32.eqz
    if
     i32.const 2384
     i32.const 4448
     i32.const 110
     i32.const 39
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store offset=40
    local.get $2
    local.get $1
    i32.load offset=4
    local.tee $1
    i32.store offset=20
    local.get $2
    i32.const 7536
    i32.store offset=36
    i32.const 2
    global.set $~argumentsLength
    local.get $1
    i32.const 7536
    call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=16
    local.get $1
    i32.load
   else
    i32.const 1696
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $0
   local.get $1
   call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32>
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store (param $0 i32) (result i32)
  (local $1 i32)
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
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=4
   local.set $1
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $1
   i32.const 6
   i32.add
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $8
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
   local.get $8
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   i32.store
   local.get $8
   i32.const 6
   i32.add
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $1
   i32.store
   i32.const 0
   local.set $0
   local.get $1
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.get $2
   i32.add
   local.set $6
   loop $while-continue|0
    local.get $2
    local.get $6
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $5
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $5
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $6
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
   local.get $3
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $2
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $1
   i32.store offset=12
   i32.const 0
   local.set $0
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/typedarray/Uint8Array#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $7
     local.get $1
     local.get $0
     call $~lib/typedarray/Uint8Array#__get
     i32.store8
     local.get $7
     i32.const 1
     i32.add
     local.set $7
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
   local.get $8
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 )
 (func $~lib/@artela/aspect-libs/package/sys.log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  local.get $0
  call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String> (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 7856
   i32.store
   local.get $0
   i32.const 1696
   i32.store offset=4
   local.get $0
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 20
   memory.fill
   local.get $0
   i32.const 16
   i32.const 97
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   i32.const 7856
   i32.store offset=8
   local.get $0
   i32.const 7856
   i32.store offset=8
   local.get $0
   i32.const 7856
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   local.get $0
   i32.const 1696
   i32.store offset=12
   local.get $0
   i32.const 1696
   i32.const 0
   call $~lib/rt/itcms/__link
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
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   local.get $0
   i32.const 1696
   i32.store
   local.get $0
   i32.const 1696
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#addAll (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    call $~lib/array/Array<~lib/string/String>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     local.get $1
     i32.store
     local.get $2
     local.get $1
     i32.load offset=12
     i32.ge_u
     if
      i32.const 1248
      i32.const 4880
      i32.const 114
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store
     local.get $4
     local.get $1
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $4
     i32.eqz
     if
      i32.const 7904
      i32.const 4880
      i32.const 118
      i32.const 40
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $3
     local.get $4
     call $~lib/array/Array<~lib/string/String>#push
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#add (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.store offset=8
  local.get $2
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 16
  i32.const 51
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
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
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
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.eqz
  if
   local.get $4
   i32.const 8
   i32.const 107
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $4
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
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#addAll
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#add
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $5
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1696
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1696
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     local.get $5
     local.get $6
     i32.store offset=8
     local.get $2
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 8144
  i32.store offset=8
  local.get $1
  local.get $2
  i32.const 8140
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $5
  local.get $4
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.store offset=4
    local.get $1
    if
     local.get $7
     local.get $1
     i32.store offset=8
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $5
    if
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 8144
     local.get $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $6
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#toString (param $0 i32) (result i32)
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
   i32.const 9412
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
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load
   local.tee $2
   i32.store
   local.get $2
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1696
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $2
   i32.const 8144
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $3
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $0
   local.get $3
   i32.const 8144
   i32.store
   local.get $4
   local.get $0
   call $~lib/util/string/joinStringArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8144
   i32.store offset=4
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 8144
   i32.store offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   i32.const 8144
   i32.store
   block $__inlined_func$~lib/string/String#endsWith$1224
    i32.const 536870910
    local.get $3
    local.get $3
    i32.const 536870910
    i32.gt_s
    select
    i32.const 8140
    i32.load
    i32.const 1
    i32.shr_u
    local.tee $3
    i32.sub
    local.tee $4
    i32.const 0
    i32.lt_s
    if
     local.get $2
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/string/String#endsWith$1224
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    i32.const 8144
    i32.store offset=4
    local.get $0
    local.get $4
    i32.const 8144
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    block $__inlined_func$~lib/string/String#slice$1225 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.const 1
     i32.sub
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.set $2
     local.get $1
     i32.const 0
     i32.lt_s
     if (result i32)
      local.get $1
      local.get $2
      i32.add
      local.tee $1
      i32.const 0
      local.get $1
      i32.const 0
      i32.gt_s
      select
     else
      local.get $1
      local.get $2
      local.get $1
      local.get $2
      i32.lt_s
      select
     end
     local.tee $1
     i32.const 0
     i32.le_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1696
      br $__inlined_func$~lib/string/String#slice$1225
     end
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.const 1
     i32.shl
     local.tee $1
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $2
     i32.store offset=4
     local.get $2
     local.get $0
     local.get $1
     memory.copy
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
    end
    local.tee $0
    i32.store offset=12
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#reload (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 52
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 8
   i32.const 102
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.const 8032
   i32.store offset=8
   i32.const 1
   global.set $~argumentsLength
   local.get $3
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 51
   i32.const 8064
   call $~lib/rt/__newArray
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $1
   i32.store offset=4
   local.get $5
   i32.const 8032
   i32.store offset=8
   local.get $5
   local.get $4
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i64.const 0
   i64.store
   local.get $5
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.eqz
   if
    local.get $5
    i32.const 8
    i32.const 104
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   call $~lib/array/Array<~lib/string/String>#constructor
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $1
   local.get $5
   i32.store
   local.get $1
   local.get $5
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
   local.get $4
   i32.store offset=8
   local.get $1
   local.get $4
   call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#addAll
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8032
   i32.store offset=8
   local.get $1
   i32.const 8032
   call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#add
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
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
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store offset=12
   local.get $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 8096
   i32.store
   local.get $3
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $3
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   i32.const 8
   i32.const 106
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.const 8096
   i32.store offset=8
   local.get $4
   local.get $1
   i32.store offset=12
   local.get $4
   local.get $3
   i32.const 8096
   local.get $1
   i32.const 0
   call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
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
   local.get $4
   local.get $1
   i32.store offset=12
   local.get $4
   local.get $1
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.const 109
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store offset=4
   local.get $5
   local.get $4
   call $~lib/object/Object#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   i32.const 0
   local.get $3
   local.get $1
   local.get $4
   call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#toString
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill
   local.get $1
   i32.const 1696
   i32.store
   local.get $1
   i32.const 1696
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
   local.tee $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $6
   i32.store
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $6
   local.get $2
   i32.store offset=4
   local.get $6
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.load
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   i32.const 0
   local.set $1
   local.get $2
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.add
   local.set $7
   loop $while-continue|0
    local.get $2
    local.get $7
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $4
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 1
      i32.add
     else
      local.get $4
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $1
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
       local.get $7
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
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $1
       i32.const 3
       i32.add
      end
     end
     local.set $1
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   local.get $3
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 2752
    i32.const 89
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7504
   i32.store offset=8
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   i32.const 7504
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   local.get $1
   i32.store offset=20
   local.get $1
   i32.eqz
   if
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $2
    i32.store
    local.get $3
    i32.const 8176
    i32.store offset=4
    i32.const 8176
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.eqz
   if
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8240
    i32.store offset=4
    i32.const 8240
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
   end
   local.get $1
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $1
    i32.load
    local.tee $2
    i32.store offset=24
    local.get $2
    i32.eqz
    if
     i32.const 2384
     i32.const 7712
     i32.const 53
     i32.const 43
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    i32.load8_u
   else
    i32.const 0
   end
   i32.eqz
   if
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    i32.const 8304
    i32.store offset=4
    i32.const 8304
    call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
    i32.const 0
    i32.const 7712
    i32.const 55
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store offset=28
   local.get $1
   i32.load offset=4
   if (result i32)
    local.get $2
    local.get $1
    i32.store offset=44
    local.get $2
    local.get $1
    i32.load offset=4
    local.tee $1
    i32.store offset=48
    local.get $1
    i32.eqz
    if
     i32.const 2384
     i32.const 7712
     i32.const 61
     i32.const 39
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store offset=40
    local.get $2
    local.get $1
    i32.load offset=4
    local.tee $1
    i32.store offset=32
    local.get $2
    i32.const 7536
    i32.store offset=36
    i32.const 2
    global.set $~argumentsLength
    local.get $1
    i32.const 7536
    call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=28
    local.get $1
    i32.load
   else
    i32.const 1696
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store offset=12
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
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load8_u offset=4
  i32.eqz
  if
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#reload
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load
  call $~lib/as-proto/assembly/Writer/Writer#int32@override
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
  call $~lib/as-proto/assembly/Writer/Writer#string@override
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
  local.tee $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 24
   memory.fill
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
   i32.const 12
   i32.const 110
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   local.get $4
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
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.store offset=4
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
   i32.store offset=8
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8496
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 8496
   call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
   local.tee $0
   i32.store offset=12
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.set
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 2752
    i32.const 76
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor
   local.tee $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $1
   i32.store
   i32.const 0
   i32.const 0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
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
   local.get $1
   local.get $0
   i32.load8_u offset=6
   i32.const 0
   i32.ne
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.store
   local.get $1
   i32.load8_u offset=4
   drop
   local.get $0
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/aspect/aspect/StoreAspect#preContractCall (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 32
   memory.fill
   local.get $2
   local.get $0
   i32.store offset=8
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 4448
    i32.const 60
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store
    local.get $1
    i32.const 0
    i32.const 33
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
   local.tee $1
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 2384
    i32.const 4448
    i32.const 65
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7392
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 7392
   i32.store
   block $__inlined_func$~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>#constructor$20 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
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
     i32.const 12
     i32.const 86
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $1
     i32.store offset=4
     local.get $3
     i32.const 7392
     i32.store offset=8
     local.get $3
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 9412
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i64.const 0
     i64.store offset=8
     local.get $1
     i32.eqz
     if
      local.get $4
      i32.const 12
      i32.const 87
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store offset=4
     local.get $4
     i32.const 7392
     i32.store offset=8
     local.get $1
     i32.const 7392
     i32.store offset=8
     local.get $1
     i32.const 7392
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $1
     i32.const 0
     i32.store8 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 1696
     i32.store offset=12
     local.get $1
     i32.const 1696
     call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32>
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     br $__inlined_func$~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>#constructor$20
    end
    br $folding-inner1
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $1
   i32.store
   local.get $1
   i32.load8_u offset=4
   i32.eqz
   if
    local.get $2
    local.get $1
    i32.store
    local.get $1
    call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#reload
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store
   local.get $1
   i32.load
   local.set $1
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 7568
   i32.store offset=4
   local.get $1
   call $~lib/number/I32#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   i32.const 7568
   local.get $1
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#get:aspect
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7856
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1696
   i32.store offset=8
   local.get $1
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String>
   local.tee $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
   local.tee $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8368
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 8368
   local.get $0
   call $~lib/string/String.__concat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8464
   i32.store offset=16
   local.get $0
   i32.const 8464
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $2
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
   i32.store
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $0
   if (result i32)
    local.get $3
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
   else
    i32.const 0
   end
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   block $__inlined_func$~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#toString<~lib/string/String>$1197
    local.get $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1696
     local.set $0
     br $__inlined_func$~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#toString<~lib/string/String>$1197
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $0
    i32.store
    local.get $0
    i32.const 0
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1696
     i32.store offset=4
     i32.const 1696
     local.set $0
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $2
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
   i32.store
   local.get $2
   local.get $1
   i32.store offset=16
   local.get $2
   local.get $1
   i32.load offset=8
   local.tee $3
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=12
   local.get $3
   local.get $0
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#set
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
   local.tee $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 8528
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   i32.const 8528
   local.get $0
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@artela/aspect-libs/package/sys.log
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 4880
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<u32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
  local.get $0
  i32.load offset=12
  local.tee $2
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
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  i32.const 0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $2
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   memory.copy
  end
  local.get $3
  local.get $2
  i32.store
  i32.const 16
  local.get $0
  call $~lib/rt/itcms/__new
  local.tee $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
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
    i32.const 9412
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
    i32.const 31
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
  i32.const 42208
  i32.const 42256
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 9412
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
   i32.eqz
   if
    local.get $0
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 9412
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
    global.set $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
   local.tee $0
   i32.store
   local.get $0
   i32.eqz
   if
    i32.const 2384
    i32.const 2624
    i32.const 29
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
  i32.const 42208
  i32.const 42256
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
   i32.const 9412
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
    i32.const 9412
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
    i32.const 2752
    i32.const 35
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
  i32.const 42208
  i32.const 42256
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
   i32.const 9412
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
    i32.const 9412
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
    i32.const 2880
    i32.store offset=8
    local.get $1
    i32.const 2880
    i32.store
    local.get $1
    i32.const 2880
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 2944
    i32.store offset=8
    local.get $1
    i32.const 2944
    i32.store offset=4
    local.get $1
    i32.const 2944
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3008
    i32.store offset=8
    local.get $1
    i32.const 3008
    i32.store offset=8
    local.get $1
    i32.const 3008
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3072
    i32.store offset=8
    local.get $1
    i32.const 3072
    i32.store offset=12
    local.get $1
    i32.const 3072
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3136
    i32.store offset=8
    local.get $1
    i32.const 3136
    i32.store offset=16
    local.get $1
    i32.const 3136
    i32.const 0
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 3216
    i32.store offset=8
    local.get $1
    i32.const 3216
    i32.store offset=20
    local.get $1
    i32.const 3216
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
    i32.const 3296
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
  i32.const 42208
  i32.const 42256
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
   i32.const 9412
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
    i32.const 9412
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
    i32.const 4336
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
  i32.const 42208
  i32.const 42256
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
  i32.const 9412
  i32.lt_s
  if
   i32.const 42208
   i32.const 42256
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
   i32.const 4592
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
)
