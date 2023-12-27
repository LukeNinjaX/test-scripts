(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32) (result i32)))
 (type $4 (func))
 (type $5 (func (param i32)))
 (type $6 (func (result i32)))
 (type $7 (func (param i32 i64)))
 (type $8 (func (param i32 i32 i32 i32) (result i32)))
 (type $9 (func (param i32) (result i64)))
 (type $10 (func (param i32 i32 i32)))
 (type $11 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $12 (func (param i32 i32 i32 i32)))
 (type $13 (func (param i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $14 (func (param i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32) (result i32)))
 (type $15 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $16 (func (param i32 i32 i64) (result i32)))
 (type $17 (func (param i32 i64 i32)))
 (type $18 (func (param i64 i32) (result i32)))
 (type $19 (func (param i32 i64 i32 i32)))
 (type $20 (func (param i32 i64) (result i32)))
 (type $21 (func (param i32 i64 i64 i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "runtime-api" "__RuntimeContextApi__.query" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.query (param i32) (result i32)))
 (import "util-api" "__UtilApi__.sLog" (func $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog (param i32)))
 (import "runtime-api" "__RuntimeContextApi__.get" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get (param i32) (result i32)))
 (import "runtime-api" "__RuntimeContextApi__.set" (func $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.set (param i32) (result i32)))
 (global $~lib/as-proto/assembly/WireType/WireType.VARINT i32 (i32.const 0))
 (global $~lib/as-proto/assembly/WireType/WireType.FIXED_64 i32 (i32.const 1))
 (global $~lib/as-proto/assembly/WireType/WireType.LENGTH_DELIMITED i32 (i32.const 2))
 (global $~lib/as-proto/assembly/WireType/WireType.START_GROUP i32 (i32.const 3))
 (global $~lib/as-proto/assembly/WireType/WireType.END_GROUP i32 (i32.const 4))
 (global $~lib/as-proto/assembly/WireType/WireType.FIXED_32 i32 (i32.const 5))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/as-proto/assembly/Protobuf/WRITER (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/READER (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/scheduler/v2/schedule-status/ScheduleStatus.Close i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/scheduler/v2/schedule-status/ScheduleStatus.Open i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/query-name-space/QueryNameSpace.QueryAspectState i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/query-name-space/QueryNameSpace.QueryAspectProperty i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/remove-name-space/RemoveNameSpace.RemoveAspectContext i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/remove-name-space/RemoveNameSpace.RemoveAspectState i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/set-name-space/SetNameSpace.SetAspectContext i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/set-name-space/SetNameSpace.SetAspectState i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/evidence-type/EvidenceType.UNKNOWN i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/evidence-type/EvidenceType.DUPLICATE_VOTE i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/proto/aspect/v2/evidence-type/EvidenceType.LIGHT_CLIENT_ATTACK i32 (i32.const 2))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.Empty i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeInt8 i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeInt16 i32 (i32.const 2))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeInt32 i32 (i32.const 3))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeInt64 i32 (i32.const 4))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeUint8 i32 (i32.const 5))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeUint16 i32 (i32.const 6))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeUint32 i32 (i32.const 7))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeUint64 i32 (i32.const 8))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeBool i32 (i32.const 9))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeString i32 (i32.const 10))
 (global $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeByteArray i32 (i32.const 11))
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
 (global $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt.p i32 (i32.const 28))
 (global $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt.actualBits i32 (i32.const 32))
 (global $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt.maxComba i32 (i32.const 256))
 (global $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt.digitMask i32 (i32.const 268435455))
 (global $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt.precision i32 (i32.const 5))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Number i32 (i32.const 0))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.BytesN i32 (i32.const 1))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Address i32 (i32.const 2))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Boolean i32 (i32.const 3))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Array i32 (i32.const 4))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Tuple i32 (i32.const 5))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.Bytes i32 (i32.const 6))
 (global $~lib/@artela/aspect-libs/common/abi/ethereum/index/ethereum.TypeId.String i32 (i32.const 7))
 (global $~lib/@artela/aspect-libs/common/key-tx/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/scheduler/schedule-service/ScheduleManager._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/evm/statedb/StateContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/evm/call/StaticCaller._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/evm/call/JustInTimeCaller._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/environment/EnvContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/block/BlockContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/tx-context/TraceContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/tx-context/TxContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/context/tx-context/ReceiptContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance (mut i32) (i32.const 0))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_RECEIVE_METHOD i32 (i32.const 2400))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_INITIALIZE_METHOD i32 (i32.const 2448))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_VERIFY_METHOD i32 (i32.const 2512))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_TX_EXECUTE_METHOD i32 (i32.const 2560))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_CONTRACT_CALL_METHOD i32 (i32.const 2608))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_CONTRACT_CALL_METHOD i32 (i32.const 2672))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_TX_EXECUTE_METHOD i32 (i32.const 2736))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_COMMIT_METHOD i32 (i32.const 2784))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_FINALIZE_METHOD i32 (i32.const 2832))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.OPERATION_METHOD i32 (i32.const 2896))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.IS_OWNER_METHOD i32 (i32.const 2944))
 (global $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_CONTRACT_BINDING_METHOD i32 (i32.const 2992))
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
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/string/String.MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/rt/__rtti_base i32 (i32.const 7936))
 (global $~lib/memory/__data_end i32 (i32.const 8388))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 41156))
 (global $~lib/memory/__heap_base i32 (i32.const 41156))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 508) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $12 (i32.const 556) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $13 (i32.const 620) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00E\00r\00r\00o\00r\00\00\00")
 (data $14 (i32.const 652) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 684) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00B\00\00\00l\00o\00a\00d\00 \00r\00u\00n\00t\00i\00m\00e\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00 \00f\00a\00i\00l\00e\00d\00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 780) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00<\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00l\00o\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00p\00r\00o\00p\00e\00r\00t\00y\00")
 (data $17 (i32.const 860) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00:\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00l\00o\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00c\00o\00n\00t\00e\00x\00t\00\00\00")
 (data $18 (i32.const 940) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00B\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00r\00e\00a\00d\00 \00a\00s\00p\00e\00c\00t\00 \00s\00t\00a\00t\00e\00 \00v\00a\00l\00u\00e\00\00\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 1036) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00F\00\00\00f\00a\00i\00l\00e\00d\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00a\00s\00p\00e\00c\00t\00 \00s\00t\00a\00t\00e\00 \00v\00a\00l\00u\00e\00\00\00\00\00\00\00")
 (data $20 (i32.const 1132) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\008\00\00\00u\00n\00a\00b\00l\00e\00 \00t\00o\00 \00p\00a\00r\00s\00e\00 \00a\00s\00p\00e\00c\00t\00 \00v\00a\00l\00u\00e\00\00\00\00\00")
 (data $21 (i32.const 1212) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00`\00\00\00u\00n\00k\00n\00o\00w\00a\00b\00l\00e\00 \00c\00o\00n\00t\00e\00x\00t\00,\00 \00n\00o\00t\00 \00a\00u\00t\00h\00o\00r\00i\00z\00e\00d\00 \00t\00o\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 1340) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 1468) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00c\00r\00y\00p\00t\00o\00-\00a\00p\00i\00.\00t\00s\00")
 (data $24 (i32.const 1580) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00s\00c\00h\00e\00d\00u\00l\00e\00-\00a\00p\00i\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $25 (i32.const 1708) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00r\00u\00n\00t\00i\00m\00e\00-\00a\00p\00i\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 1836) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00t\00r\00i\00n\00g\00D\00a\00t\00a\00\00\00\00\00")
 (data $27 (i32.const 1900) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00I\00n\00t\00D\00a\00t\00a\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 1964) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00o\00o\00l\00D\00a\00t\00a\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 2028) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00B\00y\00t\00e\00s\00D\00a\00t\00a\00\00\00\00\00\00\00")
 (data $30 (i32.const 2092) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\002\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00S\00a\00t\00e\00C\00h\00a\00n\00g\00e\00Q\00u\00e\00r\00y\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 2172) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00a\00s\00p\00e\00c\00t\00.\00v\002\00.\00C\00a\00l\00l\00S\00t\00a\00c\00k\00Q\00u\00e\00r\00y\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 2252) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00b\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00m\00o\00n\00/\00h\00e\00l\00p\00e\00r\00/\00m\00e\00s\00s\00a\00g\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $33 (i32.const 2380) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00o\00n\00T\00x\00R\00e\00c\00e\00i\00v\00e\00\00\00\00\00\00\00")
 (data $34 (i32.const 2428) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00o\00n\00B\00l\00o\00c\00k\00I\00n\00i\00t\00i\00a\00l\00i\00z\00e\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 2492) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00o\00n\00T\00x\00V\00e\00r\00i\00f\00y\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 2540) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00p\00r\00e\00T\00x\00E\00x\00e\00c\00u\00t\00e\00\00\00\00\00")
 (data $37 (i32.const 2588) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 2652) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00p\00o\00s\00t\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 2716) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00p\00o\00s\00t\00T\00x\00E\00x\00e\00c\00u\00t\00e\00\00\00")
 (data $40 (i32.const 2764) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00o\00n\00T\00x\00C\00o\00m\00m\00i\00t\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 2812) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00o\00n\00B\00l\00o\00c\00k\00F\00i\00n\00a\00l\00i\00z\00e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $42 (i32.const 2876) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00o\00p\00e\00r\00a\00t\00i\00o\00n\00\00\00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 2924) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00i\00s\00O\00w\00n\00e\00r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 2972) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00o\00n\00C\00o\00n\00t\00r\00a\00c\00t\00B\00i\00n\00d\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00")
 (data $45 (i32.const 3036) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00`\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00e\00v\00m\00-\00c\00a\00l\00l\00-\00a\00p\00i\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 3164) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00s\00t\00a\00t\00e\00d\00b\00-\00a\00p\00i\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 3292) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00h\00o\00s\00t\00a\00p\00i\00/\00u\00t\00i\00l\00-\00a\00p\00i\00.\00t\00s\00\00\00\00\00")
 (data $48 (i32.const 3404) "\8c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00t\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00s\00t\00a\00t\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $49 (i32.const 3548) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data $50 (i32.const 3596) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00t\00y\00p\00e\00s\00/\00a\00s\00p\00e\00c\00t\00-\00e\00n\00t\00r\00y\00.\00t\00s\00")
 (data $51 (i32.const 3708) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 3772) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $53 (i32.const 3804) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 3836) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $55 (i32.const 3884) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 3916) "\1c\00\00\00\00\00\00\00\00\00\00\009\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $57 (i32.const 3948) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00t\00x\00 \00i\00s\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00")
 (data $58 (i32.const 3996) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00s\00u\00c\00c\00e\00s\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 4044) "\1c\00\00\00\00\00\00\00\00\00\00\00>\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 4076) "\1c\00\00\00\00\00\00\00\00\00\00\00C\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $61 (i32.const 4108) "\1c\00\00\00\00\00\00\00\00\00\00\00D\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $62 (i32.const 4140) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00c\00u\00r\00r\00I\00n\00n\00e\00r\00T\00x\00 \00i\00s\00 \00n\00u\00l\00l\00\00\00\00\00\00\00")
 (data $63 (i32.const 4204) "\1c\00\00\00\00\00\00\00\00\00\00\00P\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 4236) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00m\00e\00t\00h\00o\00d\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 4284) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00:\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00\00\00")
 (data $66 (i32.const 4364) "\1c\00\00\00\00\00\00\00\00\00\00\00U\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data $67 (i32.const 4396) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s\00")
 (data $68 (i32.const 4508) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 \00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 4572) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $70 (i32.const 4700) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $71 (i32.const 4764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $72 (i32.const 4796) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $73 (i32.const 5196) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $74 (i32.const 6252) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $75 (i32.const 6348) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00s\00t\00a\00t\00e\00-\00k\00e\00y\00\00\00\00\00\00\00\00\00\00\00")
 (data $76 (i32.const 6396) "\1c\00\00\00\00\00\00\00\00\00\00\00[\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data $77 (i32.const 6428) "\1c\00\00\00\00\00\00\00\00\00\00\00^\00\00\00\08\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data $78 (i32.const 6460) "\1c\00\00\00\00\00\00\00\00\00\00\00_\00\00\00\08\00\00\00\t\00\00\00\00\00\00\00\00\00\00\00")
 (data $79 (i32.const 6492) "\1c\00\00\00\00\00\00\00\00\00\00\00`\00\00\00\08\00\00\00\n\00\00\00\00\00\00\00\00\00\00\00")
 (data $80 (i32.const 6524) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00<\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00b\00e\00f\00o\00r\00e\00 \00v\00a\00l\00u\00e\00:\00 \00")
 (data $81 (i32.const 6604) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e\00\00\00\00\00\00\00\00\00")
 (data $82 (i32.const 6668) "\8c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00x\00\00\00~\00l\00i\00b\00/\00@\00a\00r\00t\00e\00l\00a\00/\00a\00s\00p\00e\00c\00t\00-\00l\00i\00b\00s\00/\00c\00o\00m\00p\00o\00n\00e\00n\00t\00s\00/\00a\00s\00p\00e\00c\00t\00/\00a\00s\00p\00e\00c\00t\00-\00c\00o\00n\00t\00e\00x\00t\00.\00t\00s\00\00\00\00\00")
 (data $83 (i32.const 6812) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00c\00o\00n\00t\00e\00x\00t\00-\00k\00e\00y\00\00\00\00\00\00\00")
 (data $84 (i32.const 6860) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $85 (i32.const 6988) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00t\00x\00\00\00\00\00\00\00\00\00")
 (data $86 (i32.const 7020) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $87 (i32.const 7052) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00c\00o\00n\00t\00e\00x\00t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $88 (i32.const 7100) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00^\00\00\00\00\00\00\00\00\00\00\00")
 (data $89 (i32.const 7132) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\001\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $90 (i32.const 7196) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\002\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $91 (i32.const 7260) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00t\00h\00o\00w\00 \00e\00x\00e\00c\00e\00p\00t\00i\00o\00n\003\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $92 (i32.const 7324) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00L\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00b\00e\00f\00o\00r\00e\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00:\00 \00")
 (data $93 (i32.const 7420) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $94 (i32.const 7452) "\1c\00\00\00\00\00\00\00\00\00\00\00o\00\00\00\08\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00")
 (data $95 (i32.const 7484) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00J\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00a\00f\00t\00e\00r\00 \00c\00o\00n\00t\00e\00x\00t\00 \00v\00a\00l\00u\00e\00:\00 \00\00\00")
 (data $96 (i32.const 7580) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00F\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00 \00c\00o\00n\00t\00e\00x\00t\00-\00k\00e\00y\00 \00v\00a\00l\00u\00e\00:\00 \00\00\00\00\00\00\00")
 (data $97 (i32.const 7676) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\00M\00i\00s\00s\00i\00n\00g\00 \00f\00o\00r\00k\00(\00)\00 \00b\00e\00f\00o\00r\00e\00 \00l\00d\00e\00l\00i\00m\00(\00)\00 \00c\00a\00l\00l\00.\00\00\00\00\00")
 (data $98 (i32.const 7772) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00Z\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00S\00i\00z\00e\00r\00.\00t\00s\00\00\00")
 (data $99 (i32.const 7884) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data $100 (i32.const 7936) "p\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02\01\00\00\02\t\00\00A\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\02A\00\00\00\00\00\00\02\02\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00\01\01\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (table $0 12 12 funcref)
 (elem $0 (i32.const 1) $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect.decode $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse.encode $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest.encode $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse.decode $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.decode $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest.encode)
 (export "execute" (func $assembly/index/execute))
 (export "isBlockLevel" (func $assembly/index/isBlockLevel))
 (export "isTransactionLevel" (func $assembly/index/isTransactionLevel))
 (export "isTransactionVerifier" (func $assembly/index/isTransactionVerifier))
 (export "allocate" (func $assembly/index/allocate))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
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
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len (param $this i32) (param $len i32)
  local.get $this
  local.get $len
  i32.store
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy
  end
  local.get $buffer
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos (param $this i32) (param $pos i32)
  local.get $this
  local.get $pos
  i32.store offset=4
  local.get $this
  local.get $pos
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen (param $this i32) (param $varlen i32)
  local.get $this
  local.get $varlen
  i32.store offset=8
  local.get $this
  local.get $varlen
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx (param $this i32) (param $varlenidx i32)
  local.get $this
  local.get $varlenidx
  i32.store offset=12
  local.get $this
  local.get $varlenidx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer (param $this i32) (param $sizer i32)
  local.get $this
  local.get $sizer
  i32.store
  local.get $this
  local.get $sizer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf (param $this i32) (param $buf i32)
  local.get $this
  local.get $buf
  i32.store offset=8
  local.get $this
  local.get $buf
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr (param $this i32) (param $ptr i32)
  local.get $this
  local.get $ptr
  i32.store offset=4
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx (param $this i32) (param $varlenidx i32)
  local.get $this
  local.get $varlenidx
  i32.store offset=12
 )
 (func $~lib/as-proto/assembly/Reader/Reader#set:ptr (param $this i32) (param $ptr i32)
  local.get $this
  local.get $ptr
  i32.store
 )
 (func $~lib/as-proto/assembly/Reader/Reader#set:end (param $this i32) (param $end i32)
  local.get $this
  local.get $end
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf (param $this i32) (param $buf i32)
  local.get $this
  local.get $buf
  i32.store offset=8
  local.get $this
  local.get $buf
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:~lib/as-proto/assembly/index
  call $start:~lib/as-proto/assembly/Protobuf
 )
 (func $start:~lib/@artela/aspect-libs/proto/google/protobuf/any
  call $start:~lib/as-proto/assembly/index
 )
 (func $start:~lib/@artela/aspect-libs/proto/index
  call $start:~lib/@artela/aspect-libs/proto/google/protobuf/any
 )
 (func $start:~lib/@artela/aspect-libs/common/states/trace
  call $start:~lib/@artela/aspect-libs/proto/index
 )
 (func $~lib/error/Error#set:message (param $this i32) (param $message i32)
  local.get $this
  local.get $message
  i32.store offset=8
  local.get $this
  local.get $message
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/error/Error#set:name (param $this i32) (param $name i32)
  local.get $this
  local.get $name
  i32.store
  local.get $this
  local.get $name
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/error/Error#set:stack (param $this i32) (param $stack i32)
  local.get $this
  local.get $stack
  i32.store offset=4
  local.get $this
  local.get $stack
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:~lib/@artela/aspect-libs/common/abi/ethereum/index
  call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance
  global.set $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils
 )
 (func $start:~lib/@artela/aspect-libs/common/abi/index
  call $start:~lib/@artela/aspect-libs/common/abi/ethereum/index
 )
 (func $start:~lib/@artela/aspect-libs/common/helper/convert
  call $start:~lib/@artela/aspect-libs/common/errors
  call $start:~lib/@artela/aspect-libs/common/abi/index
 )
 (func $start:~lib/@artela/aspect-libs/common/key-tx
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/common/key-tx/convertUtil
 )
 (func $start:~lib/@artela/aspect-libs/common/key-path
  call $start:~lib/@artela/aspect-libs/common/key-tx
 )
 (func $start:~lib/@artela/aspect-libs/common/index
  call $start:~lib/@artela/aspect-libs/common/states/trace
  call $start:~lib/@artela/aspect-libs/common/helper/convert
  call $start:~lib/@artela/aspect-libs/common/key-path
 )
 (func $start:~lib/@artela/aspect-libs/components/scheduler/schedule-service
  call $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance
  global.set $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil
 )
 (func $start:~lib/@artela/aspect-libs/components/scheduler/index
  call $start:~lib/@artela/aspect-libs/components/scheduler/schedule-service
 )
 (func $start:~lib/@artela/aspect-libs/components/context/tx-context
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
  global.set $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext
 )
 (func $start:~lib/@artela/aspect-libs/components/context/index
  call $start:~lib/@artela/aspect-libs/components/context/tx-context
 )
 (func $start:~lib/@artela/aspect-libs/components/aspect/aspect-context
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
  global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:StringData (param $this i32) (param $StringData i32)
  local.get $this
  local.get $StringData
  i32.store
  local.get $this
  local.get $StringData
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:IntData (param $this i32) (param $IntData i32)
  local.get $this
  local.get $IntData
  i32.store offset=4
  local.get $this
  local.get $IntData
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:BoolData (param $this i32) (param $BoolData i32)
  local.get $this
  local.get $BoolData
  i32.store offset=8
  local.get $this
  local.get $BoolData
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:BytesData (param $this i32) (param $BytesData i32)
  local.get $this
  local.get $BytesData
  i32.store offset=12
  local.get $this
  local.get $BytesData
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:SateChangeQuery (param $this i32) (param $SateChangeQuery i32)
  local.get $this
  local.get $SateChangeQuery
  i32.store offset=16
  local.get $this
  local.get $SateChangeQuery
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:CallStackQuery (param $this i32) (param $CallStackQuery i32)
  local.get $this
  local.get $CallStackQuery
  i32.store offset=20
  local.get $this
  local.get $CallStackQuery
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:~lib/@artela/aspect-libs/components/aspect/aspect-state
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
  global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
  global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
 )
 (func $start:~lib/@artela/aspect-libs/components/aspect/index
  call $start:~lib/@artela/aspect-libs/components/aspect/aspect-context
  call $start:~lib/@artela/aspect-libs/components/aspect/aspect-state
 )
 (func $start:~lib/@artela/aspect-libs/components/index
  call $start:~lib/@artela/aspect-libs/components/scheduler/index
  call $start:~lib/@artela/aspect-libs/components/context/index
  call $start:~lib/@artela/aspect-libs/components/aspect/index
 )
 (func $start:~lib/@artela/aspect-libs/types/paramter/block-ctx
  call $start:~lib/@artela/aspect-libs/common/index
  call $start:~lib/@artela/aspect-libs/components/index
 )
 (func $start:~lib/@artela/aspect-libs/types/aspect-entry
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance
  global.set $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
 )
 (func $start:~lib/@artela/aspect-libs/types/index
  call $start:~lib/@artela/aspect-libs/types/paramter/block-ctx
  call $start:~lib/@artela/aspect-libs/types/aspect-entry
 )
 (func $start:~lib/@artela/aspect-libs/package
  i32.const 0
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor
  global.set $~lib/@artela/aspect-libs/package/sys.utils
  call $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext
  call $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.schedule
  call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
  call $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
  call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
  global.set $~lib/@artela/aspect-libs/package/sys.hostApi.util
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty.instance
  global.set $~lib/@artela/aspect-libs/package/sys.aspect.property
 )
 (func $start:~lib/@artela/aspect-libs/index
  call $start:~lib/@artela/aspect-libs/types/index
  call $start:~lib/@artela/aspect-libs/package
 )
 (func $start:assembly/aspect/aspect
  call $start:~lib/@artela/aspect-libs/index
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:blockAspect (param $this i32) (param $blockAspect i32)
  local.get $this
  local.get $blockAspect
  i32.store
  local.get $this
  local.get $blockAspect
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionAspect (param $this i32) (param $transactionAspect i32)
  local.get $this
  local.get $transactionAspect
  i32.store offset=4
  local.get $this
  local.get $transactionAspect
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:operationAspect (param $this i32) (param $operationAspect i32)
  local.get $this
  local.get $operationAspect
  i32.store offset=8
  local.get $this
  local.get $operationAspect
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionVerifier (param $this i32) (param $transactionVerifier i32)
  local.get $this
  local.get $transactionVerifier
  i32.store offset=12
  local.get $this
  local.get $transactionVerifier
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store offset=4
  local.get $this
  local.get $body
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataType (param $this i32) (param $dataType i32)
  local.get $this
  local.get $dataType
  i32.store16
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen (param $this i32) (param $dataLen i32)
  local.get $this
  local.get $dataLen
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String.UTF8.byteLength (param $str i32) (param $nullTerminated i32) (result i32)
  (local $strOff i32)
  (local $strEnd i32)
  (local $bufLen i32)
  (local $c1 i32)
  local.get $str
  local.set $strOff
  local.get $strOff
  local.get $str
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $strEnd
  local.get $nullTerminated
  i32.const 0
  i32.ne
  local.set $bufLen
  block $while-break|0
   loop $while-continue|0
    local.get $strOff
    local.get $strEnd
    i32.lt_u
    if
     local.get $strOff
     i32.load16_u
     local.set $c1
     local.get $c1
     i32.const 128
     i32.lt_u
     if
      local.get $nullTerminated
      local.get $c1
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $bufLen
      i32.const 1
      i32.add
      local.set $bufLen
     else
      local.get $c1
      i32.const 2048
      i32.lt_u
      if
       local.get $bufLen
       i32.const 2
       i32.add
       local.set $bufLen
      else
       local.get $c1
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       if (result i32)
        local.get $strOff
        i32.const 2
        i32.add
        local.get $strEnd
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $strOff
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $bufLen
         i32.const 4
         i32.add
         local.set $bufLen
         local.get $strOff
         i32.const 4
         i32.add
         local.set $strOff
         br $while-continue|0
        end
       end
       local.get $bufLen
       i32.const 3
       i32.add
       local.set $bufLen
      end
     end
     local.get $strOff
     i32.const 2
     i32.add
     local.set $strOff
     br $while-continue|0
    end
   end
  end
  local.get $bufLen
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len (param $this i32) (result i32)
  i32.const 6
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:body (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#onContractBinding (param $this i32) (param $contractAddr i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store8 offset=4
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/memory/heap.alloc (param $size i32) (result i32)
  local.get $size
  call $~lib/rt/tlsf/__alloc
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataType (param $this i32) (result i32)
  local.get $this
  i32.load16_s
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:body (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase#isOwner (param $this i32) (param $sender i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store offset=4
  local.get $this
  local.get $body
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:body (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/as-proto/assembly/Reader/Reader#get:end (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/as-proto/assembly/Reader/Reader#get:ptr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:currInnerTx (param $this i32) (param $currInnerTx i32)
  local.get $this
  local.get $currInnerTx
  i32.store offset=4
  local.get $this
  local.get $currInnerTx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:gasInfo (param $this i32) (param $gasInfo i32)
  local.get $this
  local.get $gasInfo
  i32.store offset=8
  local.get $this
  local.get $gasInfo
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:callData (param $this i32) (param $callData i32)
  local.get $this
  local.get $callData
  i32.store offset=12
  local.get $this
  local.get $callData
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32 (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockHash (param $this i32) (param $blockHash i32)
  local.get $this
  local.get $blockHash
  i32.store
  local.get $this
  local.get $blockHash
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockNumber (param $this i32) (param $blockNumber i64)
  local.get $this
  local.get $blockNumber
  i64.store offset=8
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:from (param $this i32) (param $from i32)
  local.get $this
  local.get $from
  i32.store offset=16
  local.get $this
  local.get $from
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gas (param $this i32) (param $gas i64)
  local.get $this
  local.get $gas
  i64.store offset=24
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasPrice (param $this i32) (param $gasPrice i32)
  local.get $this
  local.get $gasPrice
  i32.store offset=32
  local.get $this
  local.get $gasPrice
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasFeeCap (param $this i32) (param $gasFeeCap i32)
  local.get $this
  local.get $gasFeeCap
  i32.store offset=36
  local.get $this
  local.get $gasFeeCap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasTipCap (param $this i32) (param $gasTipCap i32)
  local.get $this
  local.get $gasTipCap
  i32.store offset=40
  local.get $this
  local.get $gasTipCap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store offset=44
  local.get $this
  local.get $hash
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:input (param $this i32) (param $input i32)
  local.get $this
  local.get $input
  i32.store offset=48
  local.get $this
  local.get $input
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:nonce (param $this i32) (param $nonce i64)
  local.get $this
  local.get $nonce
  i64.store offset=56
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:to (param $this i32) (param $to i32)
  local.get $this
  local.get $to
  i32.store offset=64
  local.get $this
  local.get $to
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:transactionIndex (param $this i32) (param $transactionIndex i64)
  local.get $this
  local.get $transactionIndex
  i64.store offset=72
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=80
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:type (param $this i32) (param $type i32)
  local.get $this
  local.get $type
  i32.store offset=84
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:accessList (param $this i32) (param $accessList i32)
  local.get $this
  local.get $accessList
  i32.store offset=88
  local.get $this
  local.get $accessList
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:chainId (param $this i32) (param $chainId i32)
  local.get $this
  local.get $chainId
  i32.store offset=92
  local.get $this
  local.get $chainId
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:v (param $this i32) (param $v i32)
  local.get $this
  local.get $v
  i32.store offset=96
  local.get $this
  local.get $v
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:r (param $this i32) (param $r i32)
  local.get $this
  local.get $r
  i32.store offset=100
  local.get $this
  local.get $r
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:s (param $this i32) (param $s i32)
  local.get $this
  local.get $s
  i32.store offset=104
  local.get $this
  local.get $s
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int64 (param $this i32) (result i64)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint64 (param $this i32) (result i64)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int32 (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#get:accessList (param $this i32) (result i32)
  local.get $this
  i32.load offset=88
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:address (param $this i32) (param $address i32)
  local.get $this
  local.get $address
  i32.store
  local.get $this
  local.get $address
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:storageKeys (param $this i32) (param $storageKeys i32)
  local.get $this
  local.get $storageKeys
  i32.store offset=4
  local.get $this
  local.get $storageKeys
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#get:storageKeys (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType (param $this i32) (param $wireType i32)
  unreachable
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:from (param $this i32) (param $from i32)
  local.get $this
  local.get $from
  i32.store
  local.get $this
  local.get $from
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:to (param $this i32) (param $to i32)
  local.get $this
  local.get $to
  i32.store offset=4
  local.get $this
  local.get $to
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store offset=8
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=12
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:gas (param $this i32) (param $gas i32)
  local.get $this
  local.get $gas
  i32.store offset=16
  local.get $this
  local.get $gas
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:ret (param $this i32) (param $ret i32)
  local.get $this
  local.get $ret
  i32.store offset=20
  local.get $this
  local.get $ret
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:leftOverGas (param $this i32) (param $leftOverGas i64)
  local.get $this
  local.get $leftOverGas
  i64.store offset=24
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:index (param $this i32) (param $index i64)
  local.get $this
  local.get $index
  i64.store offset=32
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:parentIndex (param $this i32) (param $parentIndex i64)
  local.get $this
  local.get $parentIndex
  i64.store offset=40
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:childrenIndex (param $this i32) (param $childrenIndex i32)
  local.get $this
  local.get $childrenIndex
  i32.store offset=48
  local.get $this
  local.get $childrenIndex
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#get:childrenIndex (param $this i32) (result i32)
  local.get $this
  i32.load offset=48
 )
 (func $~lib/array/Array<u64>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<u64>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasWanted (param $this i32) (param $gasWanted i64)
  local.get $this
  local.get $gasWanted
  i64.store
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasUsed (param $this i32) (param $gasUsed i64)
  local.get $this
  local.get $gasUsed
  i64.store offset=8
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gas (param $this i32) (param $gas i64)
  local.get $this
  local.get $gas
  i64.store offset=16
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:typeUrl (param $this i32) (param $typeUrl i32)
  local.get $this
  local.get $typeUrl
  i32.store
  local.get $this
  local.get $typeUrl
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=4
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:tx (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:success (param $this i32) (param $success i32)
  local.get $this
  local.get $success
  i32.store8
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:message (param $this i32) (param $message i32)
  local.get $this
  local.get $message
  i32.store offset=4
  local.get $this
  local.get $message
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:result (param $this i32) (param $result i32)
  local.get $this
  local.get $result
  i32.store
  local.get $this
  local.get $result
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:dataMessageType (param $this i32) (param $dataMessageType i32)
  local.get $this
  local.get $dataMessageType
  i32.store offset=4
  local.get $this
  local.get $dataMessageType
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store offset=8
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx#set:_tx (param $this i32) (param $_tx i32)
  local.get $this
  local.get $_tx
  i32.store
  local.get $this
  local.get $_tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#filterTx (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store8
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BoolData (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32 (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#get:data (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bool (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<u32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:callData (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:value (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionVerifier (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#get:data (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier#verifyTx (param $this i32) (param $ctx i32) (param $validationData i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BytesData (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bytes (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preTxExecute (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:currInnerTx (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#set:_innerTx (param $this i32) (param $_innerTx i32)
  local.get $this
  local.get $_innerTx
  i32.store
  local.get $this
  local.get $_innerTx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preContractCall (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#set:_innerTx (param $this i32) (param $_innerTx i32)
  local.get $this
  local.get $_innerTx
  i32.store
  local.get $this
  local.get $_innerTx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postContractCall (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxExecute (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxCommit (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:operationAspect (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#get:input (param $this i32) (result i32)
  local.get $this
  i32.load offset=48
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation#operation (param $this i32) (param $ctx i32) (param $data i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockInitialize (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockFinalize (param $this i32) (param $ctx i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:result (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/as-proto/assembly/Writer/Writer#fork (param $this i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:success (param $this i32) (result i32)
  local.get $this
  i32.load8_u
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:message (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/as-proto/assembly/Writer/Writer#string (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#ldelim (param $this i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:dataMessageType (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:data (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:typeUrl (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $assembly/index/allocate (param $size i32) (result i32)
  local.get $size
  call $~lib/memory/heap.alloc
  return
 )
 (func $assembly/aspect/aspect/StoreAspect#onContractBinding (param $this i32) (param $contractAddr i32) (result i32)
  i32.const 1
  return
 )
 (func $assembly/aspect/aspect/StoreAspect#isOwner (param $this i32) (param $sender i32) (result i32)
  i32.const 1
  return
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 4796
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 4796
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 4796
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 4796
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 5216
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 5216
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 6272
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 6272
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $assembly/aspect/aspect/StoreAspect#filterTx (param $this i32) (param $ctx i32) (result i32)
  i32.const 1
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/aspect/aspect/StoreAspect#preTxExecute (param $this i32) (param $ctx i32)
 )
 (func $~lib/util/string/isSpace (param $c i32) (result i32)
  (local $1 i32)
  local.get $c
  i32.const 5760
  i32.lt_u
  if
   local.get $c
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $c
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   return
  end
  local.get $c
  i32.const 8192
  i32.sub
  i32.const 8202
  i32.const 8192
  i32.sub
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $c
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:val (param $this i32) (param $val i32)
  local.get $this
  local.get $val
  i32.store
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store offset=8
  local.get $this
  local.get $key
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:loaded (param $this i32) (param $loaded i32)
  local.get $this
  local.get $loaded
  i32.store8 offset=4
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:loaded (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:StringData (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#get:data (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:nameSpace (param $this i32) (param $nameSpace i32)
  local.get $this
  local.get $nameSpace
  i32.store
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:query (param $this i32) (param $query i32)
  local.get $this
  local.get $query
  i32.store offset=4
  local.get $this
  local.get $query
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#get:nameSpace (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/as-proto/assembly/Writer/Writer#int32 (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#get:query (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:result (param $this i32) (param $result i32)
  local.get $this
  local.get $result
  i32.store
  local.get $this
  local.get $result
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store offset=4
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bool (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:result (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:data (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:val (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $str i32) (param $len i32) (param $buf i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $strEnd i32)
  (local $bufOff i32)
  (local $c1 i32)
  (local $b0 i32)
  (local $b1 i32)
  (local $c2 i32)
  (local $b0|11 i32)
  (local $b1|12 i32)
  (local $b2 i32)
  (local $b3 i32)
  (local $b0|15 i32)
  (local $b1|16 i32)
  (local $b2|17 i32)
  (local $18 i32)
  local.get $str
  local.get $len
  i32.const 1
  i32.shl
  i32.add
  local.set $strEnd
  local.get $buf
  local.set $bufOff
  loop $while-continue|0
   local.get $str
   local.get $strEnd
   i32.lt_u
   if
    local.get $str
    i32.load16_u
    local.set $c1
    local.get $c1
    i32.const 128
    i32.lt_u
    if
     local.get $bufOff
     local.get $c1
     i32.store8
     local.get $bufOff
     i32.const 1
     i32.add
     local.set $bufOff
     local.get $nullTerminated
     local.get $c1
     i32.eqz
     i32.and
     if
      local.get $bufOff
      local.get $buf
      i32.sub
      return
     end
    else
     local.get $c1
     i32.const 2048
     i32.lt_u
     if
      local.get $c1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.set $b0
      local.get $c1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b1
      local.get $bufOff
      local.get $b1
      i32.const 8
      i32.shl
      local.get $b0
      i32.or
      i32.store16
      local.get $bufOff
      i32.const 2
      i32.add
      local.set $bufOff
     else
      local.get $c1
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $c1
       i32.const 56320
       i32.lt_u
       if (result i32)
        local.get $str
        i32.const 2
        i32.add
        local.get $strEnd
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $str
        i32.load16_u offset=2
        local.set $c2
        local.get $c2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         i32.const 65536
         local.get $c1
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.add
         local.get $c2
         i32.const 1023
         i32.and
         i32.or
         local.set $c1
         local.get $c1
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         local.set $b0|11
         local.get $c1
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b1|12
         local.get $c1
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b2
         local.get $c1
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b3
         local.get $bufOff
         local.get $b3
         i32.const 24
         i32.shl
         local.get $b2
         i32.const 16
         i32.shl
         i32.or
         local.get $b1|12
         i32.const 8
         i32.shl
         i32.or
         local.get $b0|11
         i32.or
         i32.store
         local.get $bufOff
         i32.const 4
         i32.add
         local.set $bufOff
         local.get $str
         i32.const 4
         i32.add
         local.set $str
         br $while-continue|0
        end
       end
       local.get $errorMode
       i32.const 0
       i32.ne
       if
        local.get $errorMode
        i32.const 2
        i32.eq
        if
         i32.const 6624
         i32.const 3568
         i32.const 742
         i32.const 49
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 65533
        local.set $c1
       end
      end
      local.get $c1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.set $b0|15
      local.get $c1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b1|16
      local.get $c1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b2|17
      local.get $bufOff
      local.get $b1|16
      i32.const 8
      i32.shl
      local.get $b0|15
      i32.or
      i32.store16
      local.get $bufOff
      local.get $b2|17
      i32.store8 offset=2
      local.get $bufOff
      i32.const 3
      i32.add
      local.set $bufOff
     end
    end
    local.get $str
    i32.const 2
    i32.add
    local.set $str
    br $while-continue|0
   end
  end
  local.get $nullTerminated
  if
   local.get $bufOff
   local.tee $18
   i32.const 1
   i32.add
   local.set $bufOff
   local.get $18
   i32.const 0
   i32.store8
  end
  local.get $bufOff
  local.get $buf
  i32.sub
  return
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  return
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#get:aspect (param $this i32) (result i32)
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<~lib/string/String> (param $this i32) (param $value i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 2
  i32.const 100
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $value
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:val (param $this i32) (param $val i32)
  local.get $this
  local.get $val
  i32.store
  local.get $this
  local.get $val
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store offset=8
  local.get $this
  local.get $key
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:aspectId (param $this i32) (param $aspectId i32)
  local.get $this
  local.get $aspectId
  i32.store offset=12
  local.get $this
  local.get $aspectId
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:loaded (param $this i32) (param $loaded i32)
  local.get $this
  local.get $loaded
  i32.store8 offset=4
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:loaded (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#get:parts (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#set:resultUnwrap (param $this i32) (param $resultUnwrap i32)
  local.get $this
  local.get $resultUnwrap
  i32.store offset=4
  local.get $this
  local.get $resultUnwrap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<~lib/string/String>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#set:parts (param $this i32) (param $parts i32)
  local.get $this
  local.get $parts
  i32.store
  local.get $this
  local.get $parts
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/key-path/ContextKey.get:tx (result i32)
  i32.const 0
  call $~lib/@artela/aspect-libs/common/key-tx/TxKey#constructor
  return
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#set:resultUnwrap (param $this i32) (param $resultUnwrap i32)
  local.get $this
  local.get $resultUnwrap
  i32.store offset=4
  local.get $this
  local.get $resultUnwrap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#set:parts (param $this i32) (param $parts i32)
  local.get $this
  local.get $parts
  i32.store
  local.get $this
  local.get $parts
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:val (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:nameSpace (param $this i32) (param $nameSpace i32)
  local.get $this
  local.get $nameSpace
  i32.store
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store offset=4
  local.get $this
  local.get $key
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store offset=8
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:nameSpace (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:key (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:value (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#get:aspect (param $this i32) (result i32)
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance
  return
 )
 (func $assembly/aspect/aspect/StoreAspect#postTxExecute (param $this i32) (param $ctx i32)
 )
 (func $assembly/aspect/aspect/StoreAspect#postTxCommit (param $this i32) (param $ctx i32)
 )
 (func $assembly/aspect/aspect/StoreAspect#onBlockInitialize (param $this i32) (param $ctx i32)
 )
 (func $assembly/aspect/aspect/StoreAspect#onBlockFinalize (param $this i32) (param $ctx i32)
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<u32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/string/String.UTF8.encodeUnsafe@varargs (param $str i32) (param $len i32) (param $buf i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 3
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $nullTerminated
   end
   i32.const 0
   local.set $errorMode
  end
  local.get $str
  local.get $len
  local.get $buf
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encodeUnsafe
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#ldelim (param $this i32)
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#onContractBinding@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#onContractBinding
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase#isOwner@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#isOwner
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bytes
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int64@override (param $0 i32) (result i64)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int64
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#string
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint64@override (param $0 i32) (result i64)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint64
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int32@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#filterTx@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#filterTx
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#uint32
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#uint32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bool@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bool
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bool
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier#verifyTx@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  drop
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bytes@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bytes
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bytes
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preTxExecute@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#preTxExecute
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preContractCall@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#preContractCall
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postContractCall@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#postContractCall
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxExecute@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#postTxExecute
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxCommit@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#postTxCommit
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation#operation@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  drop
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockInitialize@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#onBlockInitialize
   return
  end
  unreachable
 )
 (func $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockFinalize@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $2
    local.get $2
    i32.const 35
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/aspect/StoreAspect#onBlockFinalize
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#fork@override (param $0 i32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 4
     i32.eq
     br_if $case0
     local.get $1
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#fork
    return
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#fork
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#string@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#string
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#ldelim@override (param $0 i32)
  (local $1 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $1
     local.get $1
     i32.const 4
     i32.eq
     br_if $case0
     local.get $1
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#ldelim
    return
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#ldelim
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#int32@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#int32
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#int32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bool@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bool
   return
  end
  unreachable
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/aspect
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/entry
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 528
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 7904
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 6880
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 6624
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5216
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 6272
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.utils
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.evmCall
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.runtimeContext
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.schedule
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.crypto
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.stateDb
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.hostApi.util
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/package/sys.aspect.property
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_RECEIVE_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_INITIALIZE_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_VERIFY_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_TX_EXECUTE_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_CONTRACT_CALL_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_CONTRACT_CALL_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_TX_EXECUTE_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_COMMIT_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_FINALIZE_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.OPERATION_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.IS_OWNER_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_CONTRACT_BINDING_METHOD
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadRuntimeCtxValue
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectProperty
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectContext
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectState
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrUpdateAspectState
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/ErrParseValueFail
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/errors/NotAuthorizedFail
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/scheduler/schedule-service/scheduleApi
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/scheduler/schedule-service/convertUtil
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/scheduler/schedule-service/ScheduleManager._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/abi/ethereum/index/crypto
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/abi/ethereum/index/utils
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/common/key-tx/convertUtil
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/evm/statedb/StateContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/evm/call/StaticCaller._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/evm/call/JustInTimeCaller._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/environment/EnvContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/block/BlockContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/tx-context/runtimeContext
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/tx-context/TraceContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/tx-context/TxContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/context/tx-context/ReceiptContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState._instance
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Writer/Writer~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/as-proto/assembly/Writer/Writer~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Writer/Writer~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/typedarray/Uint8Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Reader/Reader~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/as-proto/assembly/Reader/Reader~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/error/Error~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/components/evm/statedb/StateContext~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=32
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=36
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=40
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=44
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=64
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=80
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=88
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=92
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=96
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=100
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=104
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<~lib/string/String>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#__visit
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u64>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__visit
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>#__visit
 )
 (func $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>#__visit
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>#__visit
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>~visit
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>#__visit
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>#__visit
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Uint32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/TxKey~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>~visit
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/MappingKey~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>~visit
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
    block $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest
     block $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap
      block $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/string/String>
       block $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>
        block $~lib/@artela/aspect-libs/common/key-tx/MappingKey
         block $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>
          block $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>
           block $~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented
            block $~lib/@artela/aspect-libs/common/key-tx/TxKey
             block $~lib/typedarray/Uint32Array
              block $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt
               block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<~lib/string/String>
                block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<~lib/string/String>
                 block $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>
                  block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
                   block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>
                    block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                     block $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest
                      block $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse
                       block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                        block $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData
                         block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<i32>
                          block $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<i32>
                           block $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>
                            block $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>
                             block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                              block $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx
                               block $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx
                                block $~lib/@artela/aspect-libs/common/authority-base/ScheduleAble
                                 block $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx
                                  block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>
                                   block $~lib/@artela/aspect-libs/common/authority-base/ReceiptContextAccessible
                                    block $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx
                                     block $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx
                                      block $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx
                                       block $~lib/@artela/aspect-libs/common/authority-base/TraceAccessible
                                        block $~lib/@artela/aspect-libs/common/authority-base/JustInTimeCallable
                                         block $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx
                                          block $~lib/@artela/aspect-libs/common/authority-base/EnvContextAccessible
                                           block $~lib/@artela/aspect-libs/common/authority-base/StateDBAccessible
                                            block $~lib/@artela/aspect-libs/common/authority-base/AspectStateModifiable
                                             block $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx
                                              block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                                               block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
                                                block $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData
                                                 block $~lib/@artela/aspect-libs/common/authority-base/BlockContextAccessible
                                                  block $~lib/@artela/aspect-libs/common/authority-base/TxContextAccessible
                                                   block $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx
                                                    block $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                                                     block $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData
                                                      block $~lib/@artela/aspect-libs/common/authority-base/StaticCallable
                                                       block $~lib/@artela/aspect-libs/common/authority-base/AspectStateReadonly
                                                        block $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx
                                                         block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>
                                                          block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array
                                                           block $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo
                                                            block $~lib/array/Array<u64>
                                                             block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction
                                                              block $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>
                                                               block $~lib/array/Array<~lib/string/String>
                                                                block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple
                                                                 block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction
                                                                  block $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect
                                                                   block $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any
                                                                    block $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult
                                                                     block $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse
                                                                      block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool
                                                                       block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header
                                                                        block $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString
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
                                                                                            block $~lib/@artela/aspect-libs/components/evm/statedb/StateContext
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
                                                                                                        block $~lib/as-proto/assembly/internal/FixedReader/FixedReader
                                                                                                         block $~lib/typedarray/Uint8Array
                                                                                                          block $~lib/array/Array<i32>
                                                                                                           block $~lib/array/Array<u32>
                                                                                                            block $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer
                                                                                                             block $~lib/as-proto/assembly/Writer/Writer
                                                                                                              block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter
                                                                                                               block $~lib/arraybuffer/ArrayBufferView
                                                                                                                block $~lib/string/String
                                                                                                                 block $~lib/arraybuffer/ArrayBuffer
                                                                                                                  block $~lib/object/Object
                                                                                                                   local.get $0
                                                                                                                   i32.const 8
                                                                                                                   i32.sub
                                                                                                                   i32.load
                                                                                                                   br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter $~lib/as-proto/assembly/Writer/Writer $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer $~lib/array/Array<u32> $~lib/array/Array<i32> $~lib/typedarray/Uint8Array $~lib/as-proto/assembly/internal/FixedReader/FixedReader $~lib/as-proto/assembly/Reader/Reader $~lib/@artela/aspect-libs/common/helper/message/MessageUtil $~lib/error/Error $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil $~lib/@artela/aspect-libs/components/scheduler/schedule-service/ScheduleManager $~lib/@artela/aspect-libs/components/evm/statedb/StateContext $~lib/@artela/aspect-libs/components/evm/call/StaticCaller $~lib/@artela/aspect-libs/components/evm/call/JustInTimeCaller $~lib/@artela/aspect-libs/components/context/environment/EnvContext $~lib/@artela/aspect-libs/components/context/block/BlockContext $~lib/@artela/aspect-libs/components/context/tx-context/TraceContext $~lib/@artela/aspect-libs/common/authority-base/TraceCtx $~lib/@artela/aspect-libs/components/context/tx-context/TxContext $~lib/@artela/aspect-libs/components/context/tx-context/ReceiptContext $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableAspectState $assembly/aspect/aspect/StoreAspect $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock $~lib/@artela/aspect-libs/types/aspect-entry/Entry $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple $~lib/array/Array<~lib/string/String> $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple> $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction $~lib/array/Array<u64> $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect> $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx $~lib/@artela/aspect-libs/common/authority-base/AspectStateReadonly $~lib/@artela/aspect-libs/common/authority-base/StaticCallable $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx $~lib/@artela/aspect-libs/common/authority-base/TxContextAccessible $~lib/@artela/aspect-libs/common/authority-base/BlockContextAccessible $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData> $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx $~lib/@artela/aspect-libs/common/authority-base/AspectStateModifiable $~lib/@artela/aspect-libs/common/authority-base/StateDBAccessible $~lib/@artela/aspect-libs/common/authority-base/EnvContextAccessible $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx $~lib/@artela/aspect-libs/common/authority-base/JustInTimeCallable $~lib/@artela/aspect-libs/common/authority-base/TraceAccessible $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx $~lib/@artela/aspect-libs/common/authority-base/ReceiptContextAccessible $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction> $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx $~lib/@artela/aspect-libs/common/authority-base/ScheduleAble $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32> $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<i32> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<i32> $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse> $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData> $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/MutableAspectValue<~lib/string/String> $~lib/@artela/aspect-libs/components/aspect/aspect-state-interface/ImmutableAspectValue<~lib/string/String> $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt $~lib/typedarray/Uint32Array $~lib/@artela/aspect-libs/common/key-tx/TxKey $~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented> $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented> $~lib/@artela/aspect-libs/common/key-tx/MappingKey $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String> $~lib/@artela/aspect-libs/common/key-path/ResultUnwrap<~lib/string/String> $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $invalid
                                                                                                                  end
                                                                                                                  return
                                                                                                                 end
                                                                                                                 return
                                                                                                                end
                                                                                                                return
                                                                                                               end
                                                                                                               local.get $0
                                                                                                               local.get $1
                                                                                                               call $~lib/arraybuffer/ArrayBufferView~visit
                                                                                                               return
                                                                                                              end
                                                                                                              local.get $0
                                                                                                              local.get $1
                                                                                                              call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter~visit
                                                                                                              return
                                                                                                             end
                                                                                                             return
                                                                                                            end
                                                                                                            local.get $0
                                                                                                            local.get $1
                                                                                                            call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer~visit
                                                                                                            return
                                                                                                           end
                                                                                                           local.get $0
                                                                                                           local.get $1
                                                                                                           call $~lib/array/Array<u32>~visit
                                                                                                           return
                                                                                                          end
                                                                                                          local.get $0
                                                                                                          local.get $1
                                                                                                          call $~lib/array/Array<i32>~visit
                                                                                                          return
                                                                                                         end
                                                                                                         local.get $0
                                                                                                         local.get $1
                                                                                                         call $~lib/typedarray/Uint8Array~visit
                                                                                                         return
                                                                                                        end
                                                                                                        local.get $0
                                                                                                        local.get $1
                                                                                                        call $~lib/as-proto/assembly/internal/FixedReader/FixedReader~visit
                                                                                                        return
                                                                                                       end
                                                                                                       return
                                                                                                      end
                                                                                                      local.get $0
                                                                                                      local.get $1
                                                                                                      call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil~visit
                                                                                                      return
                                                                                                     end
                                                                                                     local.get $0
                                                                                                     local.get $1
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
                                                                                            local.get $0
                                                                                            local.get $1
                                                                                            call $~lib/@artela/aspect-libs/components/evm/statedb/StateContext~visit
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
                                                                           local.get $1
                                                                           call $~lib/@artela/aspect-libs/types/aspect-entry/Entry~visit
                                                                           return
                                                                          end
                                                                          return
                                                                         end
                                                                         return
                                                                        end
                                                                        local.get $0
                                                                        local.get $1
                                                                        call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString~visit
                                                                        return
                                                                       end
                                                                       return
                                                                      end
                                                                      local.get $0
                                                                      local.get $1
                                                                      call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool~visit
                                                                      return
                                                                     end
                                                                     local.get $0
                                                                     local.get $1
                                                                     call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse~visit
                                                                     return
                                                                    end
                                                                    local.get $0
                                                                    local.get $1
                                                                    call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult~visit
                                                                    return
                                                                   end
                                                                   local.get $0
                                                                   local.get $1
                                                                   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any~visit
                                                                   return
                                                                  end
                                                                  local.get $0
                                                                  local.get $1
                                                                  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect~visit
                                                                  return
                                                                 end
                                                                 local.get $0
                                                                 local.get $1
                                                                 call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction~visit
                                                                 return
                                                                end
                                                                local.get $0
                                                                local.get $1
                                                                call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple~visit
                                                                return
                                                               end
                                                               local.get $0
                                                               local.get $1
                                                               call $~lib/array/Array<~lib/string/String>~visit
                                                               return
                                                              end
                                                              local.get $0
                                                              local.get $1
                                                              call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>~visit
                                                              return
                                                             end
                                                             local.get $0
                                                             local.get $1
                                                             call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction~visit
                                                             return
                                                            end
                                                            local.get $0
                                                            local.get $1
                                                            call $~lib/array/Array<u64>~visit
                                                            return
                                                           end
                                                           return
                                                          end
                                                          local.get $0
                                                          local.get $1
                                                          call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array~visit
                                                          return
                                                         end
                                                         local.get $0
                                                         local.get $1
                                                         call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>~visit
                                                         return
                                                        end
                                                        local.get $0
                                                        local.get $1
                                                        call $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx~visit
                                                        return
                                                       end
                                                       return
                                                      end
                                                      return
                                                     end
                                                     return
                                                    end
                                                    local.get $0
                                                    local.get $1
                                                    call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
                                                    return
                                                   end
                                                   return
                                                  end
                                                  return
                                                 end
                                                 return
                                                end
                                                local.get $0
                                                local.get $1
                                                call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData~visit
                                                return
                                               end
                                               local.get $0
                                               local.get $1
                                               call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>~visit
                                               return
                                              end
                                              local.get $0
                                              local.get $1
                                              call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
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
                                         local.get $1
                                         call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx~visit
                                         return
                                        end
                                        return
                                       end
                                       return
                                      end
                                      local.get $0
                                      local.get $1
                                      call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx~visit
                                      return
                                     end
                                     return
                                    end
                                    return
                                   end
                                   return
                                  end
                                  local.get $0
                                  local.get $1
                                  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>~visit
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
                             local.get $1
                             call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>~visit
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>~visit
                           return
                          end
                          return
                         end
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>~visit
                 return
                end
                return
               end
               return
              end
              local.get $0
              local.get $1
              call $~lib/@artela/aspect-libs/common/wraptypes/bigint/BigInt~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/typedarray/Uint32Array~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/@artela/aspect-libs/common/key-tx/TxKey~visit
            return
           end
           return
          end
          local.get $0
          local.get $1
          call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>~visit
          return
         end
         return
        end
        local.get $0
        local.get $1
        call $~lib/@artela/aspect-libs/common/key-tx/MappingKey~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>~visit
       return
      end
      return
     end
     return
    end
    local.get $0
    local.get $1
    call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 41184
   i32.const 41232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/as-proto/assembly/Writer/Writer#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/as-proto/assembly/Writer/Writer#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 7
  i32.const 432
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 464
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 496
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $this i32) (param $length i32) (param $alignLog2 i32) (result i32)
  (local $buffer i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $length
  i32.const 1073741820
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   i32.const 528
   i32.const 576
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  local.get $alignLog2
  i32.shl
  local.tee $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $buffer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $buffer
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $length
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $length
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $sizer i32)
  (local $3 i32)
  (local $buf i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/as-proto/assembly/Writer/Writer#constructor
  local.tee $this
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#constructor
  local.tee $1
  i32.store offset=12
  local.get $1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer
  local.get $1
  local.tee $sizer
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $sizer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.store offset=24
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $3
  local.tee $buf
  i32.store offset=28
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $buf
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/as-proto/assembly/Reader/Reader#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#constructor (param $this i32) (param $buf i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Reader/Reader#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:~lib/as-proto/assembly/Protobuf
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor
  global.set $~lib/as-proto/assembly/Protobuf/WRITER
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#constructor
  global.set $~lib/as-proto/assembly/Protobuf/READER
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/error/Error#constructor (param $this i32) (param $message i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/error/Error#set:message
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/error/Error#set:name
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 672
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/error/Error#set:stack
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:~lib/@artela/aspect-libs/common/errors
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  i32.const 704
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadRuntimeCtxValue
  i32.const 0
  i32.const 800
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectProperty
  i32.const 0
  i32.const 880
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectContext
  i32.const 0
  i32.const 960
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrLoadAspectState
  i32.const 0
  i32.const 1056
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrUpdateAspectState
  i32.const 0
  i32.const 1152
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/ErrParseValueFail
  i32.const 0
  i32.const 1232
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/error/Error#constructor
  global.set $~lib/@artela/aspect-libs/common/errors/NotAuthorizedFail
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1856
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:StringData
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1920
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:IntData
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1984
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:BoolData
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2048
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:BytesData
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2112
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:SateChangeQuery
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2192
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#set:CallStackQuery
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/aspect/aspect/StoreAspect#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 35
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#constructor (param $this i32) (param $blockAspect i32) (param $transactionAspect i32) (param $operationAspect i32) (param $transactionVerifier i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 39
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:blockAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:operationAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionVerifier
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $blockAspect
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:blockAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $transactionAspect
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $operationAspect
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:operationAspect
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $transactionVerifier
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#set:transactionVerifier
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $start:assembly/index
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  call $start:assembly/aspect/aspect
  i32.const 0
  call $assembly/aspect/aspect/StoreAspect#constructor
  global.set $assembly/index/aspect
  i32.const 0
  global.get $assembly/index/aspect
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  global.get $assembly/index/aspect
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#constructor
  global.set $assembly/index/entry
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor (param $this i32) (param $type i32) (param $len i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 43
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataType
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $type
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataType
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $len
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 42
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  global.get $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeString
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load (param $this i32) (param $ptr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $ptr
  i32.load16_s
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataType
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $ptr
  i32.const 2
  i32.add
  i32.load
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load (param $this i32) (param $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:head
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:body
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:body
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString (param $this i32) (param $argPtr i32) (result i32)
  (local $arg i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.tee $arg
  i32.store offset=4
  local.get $arg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $argPtr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load
  local.get $arg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 44
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $body
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  global.get $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeBool
  i32.const 1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set (param $this i32) (param $data i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $data
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store (param $this i32) (param $ptr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataType
  i32.extend16_s
  i32.store16
  local.get $ptr
  i32.const 2
  i32.add
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  call $~lib/memory/heap.alloc
  local.set $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  local.get $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:body
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  i32.const 1
  memory.fill
  local.get $ptr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool (param $this i32) (param $out i32) (result i32)
  (local $b i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor
  local.tee $b
  i32.store
  local.get $b
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $out
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set
  local.get $b
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#store
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 56
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  global.get $~lib/@artela/aspect-libs/common/wraptypes/basic-types/typeIndex.TypeByteArray
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
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
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $body
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.ge_u
  if
   i32.const 224
   i32.const 3728
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.add
  local.get $value
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load (param $this i32) (param $ptr i32)
  (local $bodyPtr i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:head
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
  local.get $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:body
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
   i32.lt_s
   if
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:body
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $i
    local.get $bodyPtr
    i32.load8_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $bodyPtr
    i32.const 1
    i32.add
    local.set $bodyPtr
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:body
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#constructor (param $this i32) (param $tx i32) (param $currInnerTx i32) (param $gasInfo i32) (param $callData i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 48
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:tx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:currInnerTx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:gasInfo
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:callData
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $tx
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:tx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $currInnerTx
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:currInnerTx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $gasInfo
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:gasInfo
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $callData
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:callData
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor (param $this i32) (param $blockHash i32) (param $blockNumber i64) (param $from i32) (param $gas i64) (param $gasPrice i32) (param $gasFeeCap i32) (param $gasTipCap i32) (param $hash i32) (param $input i32) (param $nonce i64) (param $to i32) (param $transactionIndex i64) (param $value i32) (param $type i32) (param $accessList i32) (param $chainId i32) (param $v i32) (param $r i32) (param $s i32) (result i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 108
   i32.const 49
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockHash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockNumber
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:from
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gas
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasPrice
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasFeeCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasTipCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:hash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:input
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:nonce
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:to
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:transactionIndex
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:value
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:type
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:accessList
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:chainId
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:v
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:r
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:s
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $blockHash
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockHash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $blockNumber
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockNumber
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $from
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:from
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $gas
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gas
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $gasPrice
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasPrice
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $gasFeeCap
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasFeeCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $gasTipCap
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasTipCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $hash
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:hash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $input
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:input
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $nonce
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:nonce
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $to
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:to
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $transactionIndex
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:transactionIndex
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $value
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:value
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $type
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:type
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $accessList
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:accessList
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $chainId
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:chainId
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $v
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:v
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $r
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:r
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=4
  local.get $20
  local.get $s
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:s
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor@varargs (param $this i32) (param $blockHash i32) (param $blockNumber i64) (param $from i32) (param $gas i64) (param $gasPrice i32) (param $gasFeeCap i32) (param $gasTipCap i32) (param $hash i32) (param $input i32) (param $nonce i64) (param $to i32) (param $transactionIndex i64) (param $value i32) (param $type i32) (param $accessList i32) (param $chainId i32) (param $v i32) (param $r i32) (param $s i32) (result i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 116
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 116
  memory.fill
  block $19of19
   block $18of19
    block $17of19
     block $16of19
      block $15of19
       block $14of19
        block $13of19
         block $12of19
          block $11of19
           block $10of19
            block $9of19
             block $8of19
              block $7of19
               block $6of19
                block $5of19
                 block $4of19
                  block $3of19
                   block $2of19
                    block $1of19
                     block $0of19
                      block $outOfRange
                       global.get $~argumentsLength
                       br_table $0of19 $1of19 $2of19 $3of19 $4of19 $5of19 $6of19 $7of19 $8of19 $9of19 $10of19 $11of19 $12of19 $13of19 $14of19 $15of19 $16of19 $17of19 $18of19 $19of19 $outOfRange
                      end
                      unreachable
                     end
                     global.get $~lib/memory/__stack_pointer
                     i32.const 0
                     i32.const 0
                     call $~lib/typedarray/Uint8Array#constructor
                     local.tee $blockHash
                     i32.store
                    end
                    i64.const 0
                    local.set $blockNumber
                   end
                   global.get $~lib/memory/__stack_pointer
                   i32.const 672
                   local.tee $from
                   i32.store offset=4
                  end
                  i64.const 0
                  local.set $gas
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 672
                 local.tee $gasPrice
                 i32.store offset=8
                end
                global.get $~lib/memory/__stack_pointer
                i32.const 672
                local.tee $gasFeeCap
                i32.store offset=12
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 672
               local.tee $gasTipCap
               i32.store offset=16
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 0
              i32.const 0
              call $~lib/typedarray/Uint8Array#constructor
              local.tee $hash
              i32.store offset=20
             end
             global.get $~lib/memory/__stack_pointer
             i32.const 0
             i32.const 0
             call $~lib/typedarray/Uint8Array#constructor
             local.tee $input
             i32.store offset=24
            end
            i64.const 0
            local.set $nonce
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 672
           local.tee $to
           i32.store offset=28
          end
          i64.const 0
          local.set $transactionIndex
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 672
         local.tee $value
         i32.store offset=32
        end
        i32.const 0
        local.set $type
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 2
       i32.const 52
       i32.const 3792
       call $~lib/rt/__newArray
       local.tee $accessList
       i32.store offset=36
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 672
      local.tee $chainId
      i32.store offset=40
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $v
     i32.store offset=44
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $r
    i32.store offset=48
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $s
   i32.store offset=52
  end
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=56
  local.get $22
  local.get $blockHash
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=60
  local.get $22
  local.get $blockNumber
  local.get $from
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=64
  local.get $22
  local.get $gas
  local.get $gasPrice
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=68
  local.get $22
  local.get $gasFeeCap
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=72
  local.get $22
  local.get $gasTipCap
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=76
  local.get $22
  local.get $hash
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=80
  local.get $22
  local.get $input
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=84
  local.get $22
  local.get $nonce
  local.get $to
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=88
  local.get $22
  local.get $transactionIndex
  local.get $value
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=92
  local.get $22
  local.get $type
  local.get $accessList
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=96
  local.get $22
  local.get $chainId
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=100
  local.get $22
  local.get $v
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=104
  local.get $22
  local.get $r
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=108
  local.get $22
  local.get $s
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=112
  local.get $22
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 116
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor (param $this i32) (param $address i32) (param $storageKeys i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 50
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:storageKeys
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $address
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $storageKeys
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:storageKeys
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor@varargs (param $this i32) (param $address i32) (param $storageKeys i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 672
    local.tee $address
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 51
   i32.const 3824
   call $~lib/rt/__newArray
   local.tee $storageKeys
   i32.store offset=4
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $address
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  local.get $storageKeys
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 528
    i32.const 3856
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#constructor@varargs
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=12
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#string@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#set:address
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple#get:storageKeys
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#string@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/array/Array<~lib/string/String>#push
      drop
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i64.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i64.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  i32.const 0
  i32.const 0
  i64.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  i64.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=20
  local.get $6
  i32.const 0
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=24
  local.get $6
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#constructor@varargs
  local.tee $message
  i32.store offset=28
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
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
                         local.get $tag
                         i32.const 3
                         i32.shr_u
                         local.set $5
                         local.get $5
                         i32.const 1
                         i32.eq
                         br_if $case0|1
                         local.get $5
                         i32.const 2
                         i32.eq
                         br_if $case1|1
                         local.get $5
                         i32.const 3
                         i32.eq
                         br_if $case2|1
                         local.get $5
                         i32.const 4
                         i32.eq
                         br_if $case3|1
                         local.get $5
                         i32.const 5
                         i32.eq
                         br_if $case4|1
                         local.get $5
                         i32.const 6
                         i32.eq
                         br_if $case5|1
                         local.get $5
                         i32.const 7
                         i32.eq
                         br_if $case6|1
                         local.get $5
                         i32.const 8
                         i32.eq
                         br_if $case7|1
                         local.get $5
                         i32.const 9
                         i32.eq
                         br_if $case8|1
                         local.get $5
                         i32.const 10
                         i32.eq
                         br_if $case9|1
                         local.get $5
                         i32.const 11
                         i32.eq
                         br_if $case10|1
                         local.get $5
                         i32.const 12
                         i32.eq
                         br_if $case11|1
                         local.get $5
                         i32.const 13
                         i32.eq
                         br_if $case12|1
                         local.get $5
                         i32.const 14
                         i32.eq
                         br_if $case13|1
                         local.get $5
                         i32.const 15
                         i32.eq
                         br_if $case14|1
                         local.get $5
                         i32.const 16
                         i32.eq
                         br_if $case15|1
                         local.get $5
                         i32.const 17
                         i32.eq
                         br_if $case16|1
                         local.get $5
                         i32.const 18
                         i32.eq
                         br_if $case17|1
                         local.get $5
                         i32.const 19
                         i32.eq
                         br_if $case18|1
                         br $case19|1
                        end
                        local.get $message
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store
                        local.get $6
                        local.get $reader
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store offset=8
                        local.get $6
                        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store offset=4
                        local.get $6
                        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockHash
                        br $break|1
                       end
                       local.get $message
                       local.set $6
                       global.get $~lib/memory/__stack_pointer
                       local.get $6
                       i32.store
                       local.get $6
                       local.get $reader
                       local.set $6
                       global.get $~lib/memory/__stack_pointer
                       local.get $6
                       i32.store offset=4
                       local.get $6
                       call $~lib/as-proto/assembly/Reader/Reader#int64@override
                       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:blockNumber
                       br $break|1
                      end
                      local.get $message
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store
                      local.get $6
                      local.get $reader
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store offset=8
                      local.get $6
                      call $~lib/as-proto/assembly/Reader/Reader#string@override
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store offset=4
                      local.get $6
                      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:from
                      br $break|1
                     end
                     local.get $message
                     local.set $6
                     global.get $~lib/memory/__stack_pointer
                     local.get $6
                     i32.store
                     local.get $6
                     local.get $reader
                     local.set $6
                     global.get $~lib/memory/__stack_pointer
                     local.get $6
                     i32.store offset=4
                     local.get $6
                     call $~lib/as-proto/assembly/Reader/Reader#uint64@override
                     call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gas
                     br $break|1
                    end
                    local.get $message
                    local.set $6
                    global.get $~lib/memory/__stack_pointer
                    local.get $6
                    i32.store
                    local.get $6
                    local.get $reader
                    local.set $6
                    global.get $~lib/memory/__stack_pointer
                    local.get $6
                    i32.store offset=8
                    local.get $6
                    call $~lib/as-proto/assembly/Reader/Reader#string@override
                    local.set $6
                    global.get $~lib/memory/__stack_pointer
                    local.get $6
                    i32.store offset=4
                    local.get $6
                    call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasPrice
                    br $break|1
                   end
                   local.get $message
                   local.set $6
                   global.get $~lib/memory/__stack_pointer
                   local.get $6
                   i32.store
                   local.get $6
                   local.get $reader
                   local.set $6
                   global.get $~lib/memory/__stack_pointer
                   local.get $6
                   i32.store offset=8
                   local.get $6
                   call $~lib/as-proto/assembly/Reader/Reader#string@override
                   local.set $6
                   global.get $~lib/memory/__stack_pointer
                   local.get $6
                   i32.store offset=4
                   local.get $6
                   call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasFeeCap
                   br $break|1
                  end
                  local.get $message
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store
                  local.get $6
                  local.get $reader
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store offset=8
                  local.get $6
                  call $~lib/as-proto/assembly/Reader/Reader#string@override
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store offset=4
                  local.get $6
                  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:gasTipCap
                  br $break|1
                 end
                 local.get $message
                 local.set $6
                 global.get $~lib/memory/__stack_pointer
                 local.get $6
                 i32.store
                 local.get $6
                 local.get $reader
                 local.set $6
                 global.get $~lib/memory/__stack_pointer
                 local.get $6
                 i32.store offset=8
                 local.get $6
                 call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                 local.set $6
                 global.get $~lib/memory/__stack_pointer
                 local.get $6
                 i32.store offset=4
                 local.get $6
                 call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:hash
                 br $break|1
                end
                local.get $message
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store
                local.get $6
                local.get $reader
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store offset=8
                local.get $6
                call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store offset=4
                local.get $6
                call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:input
                br $break|1
               end
               local.get $message
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store
               local.get $6
               local.get $reader
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store offset=4
               local.get $6
               call $~lib/as-proto/assembly/Reader/Reader#uint64@override
               call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:nonce
               br $break|1
              end
              local.get $message
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store
              local.get $6
              local.get $reader
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store offset=8
              local.get $6
              call $~lib/as-proto/assembly/Reader/Reader#string@override
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store offset=4
              local.get $6
              call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:to
              br $break|1
             end
             local.get $message
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store
             local.get $6
             local.get $reader
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store offset=4
             local.get $6
             call $~lib/as-proto/assembly/Reader/Reader#int64@override
             call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:transactionIndex
             br $break|1
            end
            local.get $message
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store
            local.get $6
            local.get $reader
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store offset=8
            local.get $6
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store offset=4
            local.get $6
            call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:value
            br $break|1
           end
           local.get $message
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store
           local.get $6
           local.get $reader
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store offset=4
           local.get $6
           call $~lib/as-proto/assembly/Reader/Reader#int32@override
           call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:type
           br $break|1
          end
          local.get $message
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=8
          local.get $6
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#get:accessList
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store
          local.get $6
          local.get $reader
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=8
          local.get $6
          local.get $reader
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=12
          local.get $6
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple.decode
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=4
          local.get $6
          call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#push
          drop
          br $break|1
         end
         local.get $message
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=8
         local.get $6
         call $~lib/as-proto/assembly/Reader/Reader#string@override
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=4
         local.get $6
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:chainId
         br $break|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=4
        local.get $6
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:v
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=4
       local.get $6
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:r
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#set:s
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor (param $this i32) (param $from i32) (param $to i32) (param $data i32) (param $value i32) (param $gas i32) (param $ret i32) (param $leftOverGas i64) (param $index i64) (param $parentIndex i64) (param $childrenIndex i32) (result i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.const 53
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:from
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:to
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:data
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:value
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:gas
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:ret
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:leftOverGas
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:index
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:parentIndex
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:childrenIndex
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $from
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:from
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $to
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:to
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $data
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:data
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $value
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:value
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $gas
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:gas
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $ret
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:ret
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $leftOverGas
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:leftOverGas
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $index
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:index
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $parentIndex
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:parentIndex
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $childrenIndex
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:childrenIndex
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor@varargs (param $this i32) (param $from i32) (param $to i32) (param $data i32) (param $value i32) (param $gas i32) (param $ret i32) (param $leftOverGas i64) (param $index i64) (param $parentIndex i64) (param $childrenIndex i32) (result i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 60
  memory.fill
  block $10of10
   block $9of10
    block $8of10
     block $7of10
      block $6of10
       block $5of10
        block $4of10
         block $3of10
          block $2of10
           block $1of10
            block $0of10
             block $outOfRange
              global.get $~argumentsLength
              br_table $0of10 $1of10 $2of10 $3of10 $4of10 $5of10 $6of10 $7of10 $8of10 $9of10 $10of10 $outOfRange
             end
             unreachable
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 672
            local.tee $from
            i32.store
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 672
           local.tee $to
           i32.store offset=4
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          i32.const 0
          call $~lib/typedarray/Uint8Array#constructor
          local.tee $data
          i32.store offset=8
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 672
         local.tee $value
         i32.store offset=12
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 672
        local.tee $gas
        i32.store offset=16
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 0
       call $~lib/typedarray/Uint8Array#constructor
       local.tee $ret
       i32.store offset=20
      end
      i64.const 0
      local.set $leftOverGas
     end
     i64.const 0
     local.set $index
    end
    i64.const 0
    local.set $parentIndex
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 3
   i32.const 54
   i32.const 3904
   call $~lib/rt/__newArray
   local.tee $childrenIndex
   i32.store offset=24
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=28
  local.get $13
  local.get $from
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=32
  local.get $13
  local.get $to
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=36
  local.get $13
  local.get $data
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=40
  local.get $13
  local.get $value
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=44
  local.get $13
  local.get $gas
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=48
  local.get $13
  local.get $ret
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=52
  local.get $13
  local.get $leftOverGas
  local.get $index
  local.get $parentIndex
  local.get $childrenIndex
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=56
  local.get $13
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 60
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
 )
 (func $~lib/array/Array<u64>#push (param $this i32) (param $value i64) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u64>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 3
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u64>#get:dataStart
  local.get $oldLen
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  i64.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<u64>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  i32.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#constructor@varargs
  local.tee $message
  i32.store offset=16
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
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
                local.get $tag
                i32.const 3
                i32.shr_u
                local.set $5
                local.get $5
                i32.const 1
                i32.eq
                br_if $case0|1
                local.get $5
                i32.const 2
                i32.eq
                br_if $case1|1
                local.get $5
                i32.const 3
                i32.eq
                br_if $case2|1
                local.get $5
                i32.const 4
                i32.eq
                br_if $case3|1
                local.get $5
                i32.const 5
                i32.eq
                br_if $case4|1
                local.get $5
                i32.const 6
                i32.eq
                br_if $case5|1
                local.get $5
                i32.const 7
                i32.eq
                br_if $case6|1
                local.get $5
                i32.const 8
                i32.eq
                br_if $case7|1
                local.get $5
                i32.const 9
                i32.eq
                br_if $case8|1
                local.get $5
                i32.const 10
                i32.eq
                br_if $case9|1
                br $case10|1
               end
               local.get $message
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store
               local.get $6
               local.get $reader
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store offset=8
               local.get $6
               call $~lib/as-proto/assembly/Reader/Reader#string@override
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store offset=4
               local.get $6
               call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:from
               br $break|1
              end
              local.get $message
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store
              local.get $6
              local.get $reader
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store offset=8
              local.get $6
              call $~lib/as-proto/assembly/Reader/Reader#string@override
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store offset=4
              local.get $6
              call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:to
              br $break|1
             end
             local.get $message
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store
             local.get $6
             local.get $reader
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store offset=8
             local.get $6
             call $~lib/as-proto/assembly/Reader/Reader#bytes@override
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store offset=4
             local.get $6
             call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:data
             br $break|1
            end
            local.get $message
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store
            local.get $6
            local.get $reader
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store offset=8
            local.get $6
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store offset=4
            local.get $6
            call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:value
            br $break|1
           end
           local.get $message
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store
           local.get $6
           local.get $reader
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store offset=8
           local.get $6
           call $~lib/as-proto/assembly/Reader/Reader#string@override
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store offset=4
           local.get $6
           call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:gas
           br $break|1
          end
          local.get $message
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store
          local.get $6
          local.get $reader
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=8
          local.get $6
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=4
          local.get $6
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:ret
          br $break|1
         end
         local.get $message
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=4
         local.get $6
         call $~lib/as-proto/assembly/Reader/Reader#uint64@override
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:leftOverGas
         br $break|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=4
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#uint64@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:index
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=4
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#int64@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#set:parentIndex
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction#get:childrenIndex
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      call $~lib/array/Array<u64>#push
      drop
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#constructor (param $this i32) (param $gasWanted i64) (param $gasUsed i64) (param $gas i64) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 55
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasWanted
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasUsed
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gas
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $gasWanted
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasWanted
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $gasUsed
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasUsed
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $gas
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gas
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i64.const 0
  i64.const 0
  i64.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#constructor
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $tag
         i32.const 3
         i32.shr_u
         local.set $5
         local.get $5
         i32.const 1
         i32.eq
         br_if $case0|1
         local.get $5
         i32.const 2
         i32.eq
         br_if $case1|1
         local.get $5
         i32.const 3
         i32.eq
         br_if $case2|1
         br $case3|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#uint64@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasWanted
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#uint64@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gasUsed
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint64@override
      call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo#set:gas
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor (param $this i32) (param $typeUrl i32) (param $value i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 47
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:typeUrl
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:value
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $typeUrl
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:typeUrl
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:value
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor@varargs (param $this i32) (param $typeUrl i32) (param $value i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 672
    local.tee $typeUrl
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $value
   i32.store offset=4
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $typeUrl
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor@varargs
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=12
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#string@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:typeUrl
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#set:value
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#constructor
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $case0|1
          local.get $tag
          i32.const 3
          i32.shr_u
          local.set $5
          local.get $5
          i32.const 1
          i32.eq
          br_if $case0|1
          local.get $5
          i32.const 2
          i32.eq
          br_if $case1|1
          local.get $5
          i32.const 3
          i32.eq
          br_if $case2|1
          local.get $5
          i32.const 4
          i32.eq
          br_if $case3|1
          br $case4|1
         end
         local.get $message
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=12
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=16
         local.get $6
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction.decode
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=8
         local.get $6
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:tx
         br $break|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=12
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=16
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#uint32@override
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-stack-transaction/EthStackTransaction.decode
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store offset=8
        local.get $6
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:currInnerTx
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=12
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=16
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/gas-info/GasInfo.decode
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:gasInfo
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=16
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#set:callData
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset (param $this i32) (param $buf i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load
  call_indirect (type $2)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect (param $this i32) (param $argPtr i32) (result i32)
  (local $encodedArg i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $encodedArg
  i32.store
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $argPtr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 3936
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor (param $this i32) (param $success i32) (param $message i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 46
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:success
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:message
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $success
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:success
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $message
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:message
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrorRunResult (param $this i32) (param $errMsg i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  local.get $errMsg
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor (param $this i32) (param $result i32) (param $dataMessageType i32) (param $data i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 45
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:result
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:dataMessageType
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:data
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $result
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:result
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $dataMessageType
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:dataMessageType
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $data
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#set:data
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse (param $this i32) (param $errMsg i32) (result i32)
  (local $runResult i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $errMsg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrorRunResult
  local.tee $runResult
  i32.store offset=8
  i32.const 0
  local.get $runResult
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 672
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx#constructor (param $this i32) (param $tx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 58
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx#set:_tx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $tx
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx#set:_tx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#constructor (param $this i32) (param $data i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 61
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $data
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#get:data
  call $~lib/as-proto/assembly/Writer/Writer#bool@override
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<u32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<i32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#set:length
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#set:length
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#set:length
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData> (param $this i32) (param $typeUrl i32) (param $message i32) (param $encoder i32) (result i32)
  (local $uint8Array i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $encoder
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
  local.tee $uint8Array
  i32.store offset=8
  i32.const 0
  local.get $typeUrl
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $uint8Array
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#NewDataResponse<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData> (param $this i32) (param $success i32) (param $msg i32) (param $typeUrl i32) (param $message i32) (param $encoder i32) (result i32)
  (local $runResult i32)
  (local $data i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $success
  local.get $msg
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
  local.tee $runResult
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $typeUrl
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $message
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  local.get $encoder
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=16
  local.get $8
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
  local.tee $data
  i32.store offset=20
  i32.const 0
  local.get $runResult
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $typeUrl
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $data
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 63
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor (param $this i32) (param $data i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 66
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor@varargs (param $this i32) (param $data i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
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
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $data
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor@varargs
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case1|1
      block $case0|1
       local.get $tag
       i32.const 3
       i32.shr_u
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#set:data
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load
  call_indirect (type $2)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 10
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#get:data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData> (param $this i32) (param $typeUrl i32) (param $message i32) (param $encoder i32) (result i32)
  (local $uint8Array i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $encoder
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
  local.tee $uint8Array
  i32.store offset=8
  i32.const 0
  local.get $typeUrl
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $uint8Array
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#NewDataResponse<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData> (param $this i32) (param $success i32) (param $msg i32) (param $typeUrl i32) (param $message i32) (param $encoder i32) (result i32)
  (local $runResult i32)
  (local $data i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $success
  local.get $msg
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
  local.tee $runResult
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $typeUrl
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $message
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  local.get $encoder
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=16
  local.get $8
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
  local.tee $data
  i32.store offset=20
  i32.const 0
  local.get $runResult
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store
  local.get $8
  local.get $typeUrl
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=8
  local.get $8
  local.get $data
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefTrueRunResult (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  i32.const 1
  i32.const 4016
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse (param $this i32) (result i32)
  (local $runResult i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefTrueRunResult
  local.tee $runResult
  i32.store offset=4
  i32.const 0
  local.get $runResult
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 672
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#constructor (param $this i32) (param $innerTx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 73
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#set:_innerTx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $innerTx
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#set:_innerTx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#constructor (param $this i32) (param $innerTx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 76
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#set:_innerTx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $innerTx
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#set:_innerTx
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load
  call_indirect (type $2)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTransaction (param $this i32) (param $argPtr i32) (result i32)
  (local $encodedArg i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $encodedArg
  i32.store
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $argPtr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 4224
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 672
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:success
  call $~lib/as-proto/assembly/Writer/Writer#bool@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 10
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:typeUrl
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:value
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#bytes@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse.encode (param $message i32) (param $writer i32)
  (local $result i32)
  (local $data i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:result
  local.tee $result
  i32.store offset=4
  local.get $result
  i32.const 0
  i32.ne
  if
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i32.const 10
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/as-proto/assembly/Writer/Writer#fork@override
   local.get $result
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult.encode
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
  end
  local.get $writer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:dataMessageType
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#get:data
  local.tee $data
  i32.store offset=16
  local.get $data
  i32.const 0
  i32.ne
  if
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   i32.const 26
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/as-proto/assembly/Writer/Writer#fork@override
   local.get $data
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode
   local.get $writer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set (param $this i32) (param $data i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint8Array#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.ge_u
  if
   i32.const 224
   i32.const 3728
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.add
  i32.load8_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  call $~lib/memory/heap.alloc
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
  local.get $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:head
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
   i32.lt_s
   if
    local.get $bodyPtr
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $4
    call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get:body
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    local.get $i
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    memory.fill
    local.get $bodyPtr
    i32.const 1
    i32.add
    local.set $bodyPtr
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $ptr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreAspectResponse (param $this i32) (param $output i32) (result i32)
  (local $encodedOutput i32)
  (local $ret i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $output
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4384
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse>
  local.tee $encodedOutput
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $ret
  i32.store offset=12
  local.get $ret
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $encodedOutput
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
  local.get $ret
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#execute (param $this i32) (param $methodPtr i32) (param $argPtr i32) (result i32)
  (local $methodArg i32)
  (local $method i32)
  (local $arg i32)
  (local $6 i32)
  (local $out i32)
  (local $arg|8 i32)
  (local $9 i32)
  (local $out|10 i32)
  (local $11 i32)
  (local $out|12 i32)
  (local $out|13 i32)
  (local $arg|14 i32)
  (local $15 i32)
  (local $ctx i32)
  (local $17 i32)
  (local $isFilter i32)
  (local $boolData i32)
  (local $arg|20 i32)
  (local $ctx|21 i32)
  (local $validationBytes i32)
  (local $23 i32)
  (local $validationData i32)
  (local $25 i32)
  (local $sender i32)
  (local $bytesData i32)
  (local $ctx|28 i32)
  (local $29 i32)
  (local $arg|30 i32)
  (local $31 i32)
  (local $ctx|32 i32)
  (local $33 i32)
  (local $arg|34 i32)
  (local $35 i32)
  (local $ctx|36 i32)
  (local $37 i32)
  (local $ctx|38 i32)
  (local $39 i32)
  (local $arg|40 i32)
  (local $ctx|41 i32)
  (local $42 i32)
  (local $arg|43 i32)
  (local $ctx|44 i32)
  (local $45 i32)
  (local $ret i32)
  (local $bytesData|47 i32)
  (local $encodeData i32)
  (local $any i32)
  (local $runResult i32)
  (local $ctx|51 i32)
  (local $52 i32)
  (local $ctx|53 i32)
  (local $54 i32)
  (local $55 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 216
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 216
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.tee $methodArg
  i32.store offset=4
  local.get $methodArg
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  local.get $methodPtr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $methodArg
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get
  local.tee $method
  i32.store offset=8
  local.get $method
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_CONTRACT_BINDING_METHOD
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store offset=12
  local.get $55
  call $~lib/string/String.__eq
  if (result i32)
   local.get $this
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   local.get $argPtr
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString
   local.tee $arg
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store offset=20
   local.get $55
   call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
   local.tee $6
   i32.store offset=24
   local.get $6
   if (result i32)
    local.get $6
   else
    i32.const 1360
    i32.const 3616
    i32.const 57
    i32.const 19
    call $~lib/builtins/abort
    unreachable
   end
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   local.get $arg
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store offset=12
   local.get $55
   call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#onContractBinding@override
   local.set $out
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   local.get $out
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
   local.set $55
   global.get $~lib/memory/__stack_pointer
   i32.const 216
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $55
   return
  end
  local.get $method
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.IS_OWNER_METHOD
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store offset=12
  local.get $55
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   local.get $argPtr
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadInputString
   local.tee $arg|8
   i32.store offset=28
   local.get $this
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
    local.tee $9
    i32.store offset=32
    local.get $9
    if (result i32)
     local.get $9
    else
     i32.const 1360
     i32.const 3616
     i32.const 63
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $arg|8
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase#isOwner@override
    local.set $out|10
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $out|10
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
    local.set $55
    global.get $~lib/memory/__stack_pointer
    i32.const 216
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $55
    return
   end
   local.get $this
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect
   i32.const 0
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect
    local.tee $11
    i32.store offset=36
    local.get $11
    if (result i32)
     local.get $11
    else
     i32.const 1360
     i32.const 3616
     i32.const 67
     i32.const 21
     call $~lib/builtins/abort
     unreachable
    end
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $arg|8
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-interface/AspectBase#isOwner@override
    local.set $out|12
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $out|12
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
    local.set $55
    global.get $~lib/memory/__stack_pointer
    i32.const 216
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $55
    return
   end
  end
  local.get $method
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_RECEIVE_METHOD
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store offset=12
  local.get $55
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   local.get $argPtr
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
   local.tee $arg|14
   i32.store offset=40
   local.get $arg|14
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:tx
   i32.const 0
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    i32.const 3968
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
    local.tee $out|13
    i32.store offset=44
   else
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    global.get $~lib/memory/__stack_pointer
    local.get $arg|14
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:tx
    local.tee $15
    i32.store offset=48
    local.get $15
    if (result i32)
     local.get $15
    else
     i32.const 1360
     i32.const 3616
     i32.const 78
     i32.const 37
     call $~lib/builtins/abort
     unreachable
    end
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    call $~lib/@artela/aspect-libs/types/paramter/filter-tx-ctx/FilterTxCtx#constructor
    local.tee $ctx
    i32.store offset=52
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
    local.tee $17
    i32.store offset=56
    local.get $17
    if (result i32)
     local.get $17
    else
     i32.const 1360
     i32.const 3616
     i32.const 79
     i32.const 26
     call $~lib/builtins/abort
     unreachable
    end
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $ctx
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#filterTx@override
    local.set $isFilter
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $isFilter
    call $~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData#constructor
    local.tee $boolData
    i32.store offset=60
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    i32.const 1
    i32.const 4016
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=72
    local.get $55
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BoolData
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    local.get $boolData
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=64
    local.get $55
    i32.const 4064
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=68
    local.get $55
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#NewDataResponse<~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData>
    local.tee $out|13
    i32.store offset=44
   end
  else
   local.get $method
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store
   local.get $55
   global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_VERIFY_METHOD
   local.set $55
   global.get $~lib/memory/__stack_pointer
   local.get $55
   i32.store offset=12
   local.get $55
   call $~lib/string/String.__eq
   if
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $argPtr
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
    local.tee $arg|20
    i32.store offset=76
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    call $~lib/@artela/aspect-libs/types/paramter/verify-tx-ctx/VerifyTxCtx#constructor
    local.tee $ctx|21
    i32.store offset=80
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $validationBytes
    i32.store offset=84
    local.get $arg|20
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:callData
    if
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $arg|20
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store offset=12
     local.get $55
     call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:callData
     local.tee $23
     i32.store offset=88
     local.get $23
     if (result i32)
      local.get $23
     else
      i32.const 1360
      i32.const 3616
      i32.const 94
      i32.const 27
      call $~lib/builtins/abort
      unreachable
     end
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store
     local.get $55
     call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:value
     local.tee $validationBytes
     i32.store offset=84
    end
    global.get $~lib/memory/__stack_pointer
    local.get $validationBytes
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    i32.const 4096
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    i32.const 2
    global.set $~argumentsLength
    i32.const 0
    call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>@varargs
    local.tee $validationData
    i32.store offset=92
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=64
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionVerifier
    local.tee $25
    i32.store offset=96
    local.get $25
    if (result i32)
     local.get $25
    else
     i32.const 1360
     i32.const 3616
     i32.const 97
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    local.get $ctx|21
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    local.get $validationData
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=64
    local.get $55
    call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#get:data
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    call $~lib/@artela/aspect-libs/types/aspect-interface/ITransactionVerifier#verifyTx@override
    local.tee $sender
    i32.store offset=100
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $sender
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor
    local.tee $bytesData
    i32.store offset=104
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    i32.const 1
    i32.const 4016
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=72
    local.get $55
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BytesData
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=20
    local.get $55
    local.get $bytesData
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=64
    local.get $55
    i32.const 4128
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=68
    local.get $55
    call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#NewDataResponse<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
    local.tee $out|13
    i32.store offset=44
   else
    local.get $method
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store
    local.get $55
    global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_TX_EXECUTE_METHOD
    local.set $55
    global.get $~lib/memory/__stack_pointer
    local.get $55
    i32.store offset=12
    local.get $55
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx#constructor
     local.tee $ctx|28
     i32.store offset=108
     global.get $~lib/memory/__stack_pointer
     local.get $this
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store offset=20
     local.get $55
     call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
     local.tee $29
     i32.store offset=112
     local.get $29
     if (result i32)
      local.get $29
     else
      i32.const 1360
      i32.const 3616
      i32.const 108
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store
     local.get $55
     local.get $ctx|28
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store offset=12
     local.get $55
     call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preTxExecute@override
     global.get $~lib/memory/__stack_pointer
     global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store
     local.get $55
     call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
     local.tee $out|13
     i32.store offset=44
    else
     local.get $method
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store
     local.get $55
     global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.PRE_CONTRACT_CALL_METHOD
     local.set $55
     global.get $~lib/memory/__stack_pointer
     local.get $55
     i32.store offset=12
     local.get $55
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
      local.set $55
      global.get $~lib/memory/__stack_pointer
      local.get $55
      i32.store
      local.get $55
      local.get $argPtr
      call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
      local.tee $arg|30
      i32.store offset=116
      local.get $arg|30
      local.set $55
      global.get $~lib/memory/__stack_pointer
      local.get $55
      i32.store
      local.get $55
      call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:currInnerTx
      i32.const 0
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       i32.const 4160
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store offset=12
       local.get $55
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
       local.tee $out|13
       i32.store offset=44
      else
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       global.get $~lib/memory/__stack_pointer
       local.get $arg|30
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store offset=12
       local.get $55
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:currInnerTx
       local.tee $31
       i32.store offset=120
       local.get $31
       if (result i32)
        local.get $31
       else
        i32.const 1360
        i32.const 3616
        i32.const 115
        i32.const 44
        call $~lib/builtins/abort
        unreachable
       end
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#constructor
       local.tee $ctx|32
       i32.store offset=124
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store offset=20
       local.get $55
       call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
       local.tee $33
       i32.store offset=128
       local.get $33
       if (result i32)
        local.get $33
       else
        i32.const 1360
        i32.const 3616
        i32.const 116
        i32.const 9
        call $~lib/builtins/abort
        unreachable
       end
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       local.get $ctx|32
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store offset=12
       local.get $55
       call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#preContractCall@override
       global.get $~lib/memory/__stack_pointer
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
       local.tee $out|13
       i32.store offset=44
      end
     else
      local.get $method
      local.set $55
      global.get $~lib/memory/__stack_pointer
      local.get $55
      i32.store
      local.get $55
      global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_CONTRACT_CALL_METHOD
      local.set $55
      global.get $~lib/memory/__stack_pointer
      local.get $55
      i32.store offset=12
      local.get $55
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       local.get $argPtr
       call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
       local.tee $arg|34
       i32.store offset=132
       local.get $arg|34
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:currInnerTx
       i32.const 0
       i32.eq
       if
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        i32.const 4160
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=12
        local.get $55
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
        local.tee $out|13
        i32.store offset=44
       else
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        global.get $~lib/memory/__stack_pointer
        local.get $arg|34
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=12
        local.get $55
        call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:currInnerTx
        local.tee $35
        i32.store offset=136
        local.get $35
        if (result i32)
         local.get $35
        else
         i32.const 1360
         i32.const 3616
         i32.const 124
         i32.const 45
         call $~lib/builtins/abort
         unreachable
        end
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#constructor
        local.tee $ctx|36
        i32.store offset=140
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=20
        local.get $55
        call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
        local.tee $37
        i32.store offset=144
        local.get $37
        if (result i32)
         local.get $37
        else
         i32.const 1360
         i32.const 3616
         i32.const 125
         i32.const 9
         call $~lib/builtins/abort
         unreachable
        end
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        local.get $ctx|36
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=12
        local.get $55
        call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postContractCall@override
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
        local.tee $out|13
        i32.store offset=44
       end
      else
       local.get $method
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store
       local.get $55
       global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.POST_TX_EXECUTE_METHOD
       local.set $55
       global.get $~lib/memory/__stack_pointer
       local.get $55
       i32.store offset=12
       local.get $55
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        call $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx#constructor
        local.tee $ctx|38
        i32.store offset=148
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=20
        local.get $55
        call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
        local.tee $39
        i32.store offset=152
        local.get $39
        if (result i32)
         local.get $39
        else
         i32.const 1360
         i32.const 3616
         i32.const 130
         i32.const 7
         call $~lib/builtins/abort
         unreachable
        end
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        local.get $ctx|38
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=12
        local.get $55
        call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxExecute@override
        global.get $~lib/memory/__stack_pointer
        global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
        local.tee $out|13
        i32.store offset=44
       else
        local.get $method
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store
        local.get $55
        global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_TX_COMMIT_METHOD
        local.set $55
        global.get $~lib/memory/__stack_pointer
        local.get $55
        i32.store offset=12
        local.get $55
        call $~lib/string/String.__eq
        if
         global.get $~lib/memory/__stack_pointer
         global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
         local.set $55
         global.get $~lib/memory/__stack_pointer
         local.get $55
         i32.store
         local.get $55
         local.get $argPtr
         call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTxAspect
         local.tee $arg|40
         i32.store offset=156
         local.get $arg|40
         local.set $55
         global.get $~lib/memory/__stack_pointer
         local.get $55
         i32.store
         local.get $55
         call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect#get:tx
         i32.const 0
         i32.eq
         if
          global.get $~lib/memory/__stack_pointer
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          i32.const 3968
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
          local.tee $out|13
          i32.store offset=44
         else
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          call $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx#constructor
          local.tee $ctx|41
          i32.store offset=160
          global.get $~lib/memory/__stack_pointer
          local.get $this
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=20
          local.get $55
          call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
          local.tee $42
          i32.store offset=164
          local.get $42
          if (result i32)
           local.get $42
          else
           i32.const 1360
           i32.const 3616
           i32.const 138
           i32.const 9
           call $~lib/builtins/abort
           unreachable
          end
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          local.get $ctx|41
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectTransaction#postTxCommit@override
          global.get $~lib/memory/__stack_pointer
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
          local.tee $out|13
          i32.store offset=44
         end
        else
         local.get $method
         local.set $55
         global.get $~lib/memory/__stack_pointer
         local.get $55
         i32.store
         local.get $55
         global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.OPERATION_METHOD
         local.set $55
         global.get $~lib/memory/__stack_pointer
         local.get $55
         i32.store offset=12
         local.get $55
         call $~lib/string/String.__eq
         if
          global.get $~lib/memory/__stack_pointer
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          local.get $argPtr
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#LoadEthTransaction
          local.tee $arg|43
          i32.store offset=168
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          call $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx#constructor
          local.tee $ctx|44
          i32.store offset=172
          global.get $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          local.get $this
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=64
          local.get $55
          call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:operationAspect
          local.tee $45
          i32.store offset=176
          local.get $45
          if (result i32)
           local.get $45
          else
           i32.const 1360
           i32.const 3616
           i32.const 144
           i32.const 19
           call $~lib/builtins/abort
           unreachable
          end
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          local.get $ctx|44
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          local.get $arg|43
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=64
          local.get $55
          call $~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction#get:input
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=20
          local.get $55
          call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectOperation#operation@override
          local.tee $ret
          i32.store offset=180
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          local.get $ret
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          call $~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData#constructor
          local.tee $bytesData|47
          i32.store offset=184
          global.get $~lib/memory/__stack_pointer
          local.get $bytesData|47
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          i32.const 4128
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>
          local.tee $encodeData
          i32.store offset=188
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=20
          local.get $55
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BytesData
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          local.get $encodeData
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
          local.tee $any
          i32.store offset=192
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          i32.const 1
          i32.const 4016
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
          local.tee $runResult
          i32.store offset=196
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          local.get $runResult
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=64
          local.get $55
          call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:BytesData
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          local.get $any
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=20
          local.get $55
          call $~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse#constructor
          local.tee $out|13
          i32.store offset=44
         else
          local.get $method
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store
          local.get $55
          global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_INITIALIZE_METHOD
          local.set $55
          global.get $~lib/memory/__stack_pointer
          local.get $55
          i32.store offset=12
          local.get $55
          call $~lib/string/String.__eq
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 0
           call $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx#constructor
           local.tee $ctx|51
           i32.store offset=200
           global.get $~lib/memory/__stack_pointer
           local.get $this
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store offset=20
           local.get $55
           call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect
           local.tee $52
           i32.store offset=204
           local.get $52
           if (result i32)
            local.get $52
           else
            i32.const 1360
            i32.const 3616
            i32.const 153
            i32.const 7
            call $~lib/builtins/abort
            unreachable
           end
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store
           local.get $55
           local.get $ctx|51
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store offset=12
           local.get $55
           call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockInitialize@override
           global.get $~lib/memory/__stack_pointer
           global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store
           local.get $55
           call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
           local.tee $out|13
           i32.store offset=44
          else
           local.get $method
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store
           local.get $55
           global.get $~lib/@artela/aspect-libs/types/aspect-interface/PointCutType.ON_BLOCK_FINALIZE_METHOD
           local.set $55
           global.get $~lib/memory/__stack_pointer
           local.get $55
           i32.store offset=12
           local.get $55
           call $~lib/string/String.__eq
           if
            global.get $~lib/memory/__stack_pointer
            i32.const 0
            call $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx#constructor
            local.tee $ctx|53
            i32.store offset=208
            global.get $~lib/memory/__stack_pointer
            local.get $this
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=20
            local.get $55
            call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect
            local.tee $54
            i32.store offset=212
            local.get $54
            if (result i32)
             local.get $54
            else
             i32.const 1360
             i32.const 3616
             i32.const 157
             i32.const 7
             call $~lib/builtins/abort
             unreachable
            end
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store
            local.get $55
            local.get $ctx|53
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=12
            local.get $55
            call $~lib/@artela/aspect-libs/types/aspect-interface/IAspectBlock#onBlockFinalize@override
            global.get $~lib/memory/__stack_pointer
            global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store
            local.get $55
            call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#DefAspectResponse
            local.tee $out|13
            i32.store offset=44
           else
            global.get $~lib/memory/__stack_pointer
            global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store
            local.get $55
            i32.const 4256
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=68
            local.get $55
            local.get $method
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=72
            local.get $55
            call $~lib/string/String.__concat
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=20
            local.get $55
            i32.const 4304
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=64
            local.get $55
            call $~lib/string/String.__concat
            local.set $55
            global.get $~lib/memory/__stack_pointer
            local.get $55
            i32.store offset=12
            local.get $55
            call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ErrAspectResponse
            local.tee $out|13
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
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store
  local.get $55
  local.get $out|13
  local.set $55
  global.get $~lib/memory/__stack_pointer
  local.get $55
  i32.store offset=12
  local.get $55
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreAspectResponse
  local.set $55
  global.get $~lib/memory/__stack_pointer
  i32.const 216
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $55
  return
 )
 (func $assembly/index/execute (param $methodPtr i32) (param $argPtr i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/entry
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $methodPtr
  local.get $argPtr
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#execute
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isBlockLevel (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:blockAspect
  i32.const 0
  i32.ne
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/isBlockLevel (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/entry
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isBlockLevel
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isTransactionLevel (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionAspect
  i32.const 0
  i32.ne
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/isTransactionLevel (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/entry
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isTransactionLevel
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isTransactionVerifier (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/@artela/aspect-libs/types/aspect-entry/messageUtil
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#get:transactionVerifier
  i32.const 0
  i32.ne
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#StoreOutputBool
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/isTransactionVerifier (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $assembly/index/entry
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@artela/aspect-libs/types/aspect-entry/Entry#isTransactionVerifier
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32 (param $this i32) (result i32)
  (local $loaded i32)
  (local $value i32)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|6 i32)
  (local $step|7 i32)
  (local $ptr|8 i32)
  (local $this|9 i32)
  (local $step|10 i32)
  (local $ptr|11 i32)
  (local $this|12 i32)
  (local $step|13 i32)
  (local $ptr|14 i32)
  (local $this|15 i32)
  (local $step|16 i32)
  (local $ptr|17 i32)
  (local $this|18 i32)
  (local $step|19 i32)
  (local $ptr|20 i32)
  (local $this|21 i32)
  (local $step|22 i32)
  (local $ptr|23 i32)
  (local $this|24 i32)
  (local $step|25 i32)
  (local $ptr|26 i32)
  (local $this|27 i32)
  (local $step|28 i32)
  (local $ptr|29 i32)
  (local $this|30 i32)
  (local $step|31 i32)
  (local $ptr|32 i32)
  (local $33 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store
   i32.const 1
   local.set $step
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.0
  end
  i32.load8_u
  local.tee $loaded
  i32.const 127
  i32.and
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|6
   i32.store offset=12
   i32.const 1
   local.set $step|7
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|8
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|7
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|8
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.1
  end
  i32.load8_u
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 7
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|9
   i32.store offset=16
   i32.const 1
   local.set $step|10
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|11
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|10
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|11
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.2
  end
  i32.load8_u
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 14
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.3 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|12
   i32.store offset=20
   i32.const 1
   local.set $step|13
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|14
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|13
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|14
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.3
  end
  i32.load8_u
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 21
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.4 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|15
   i32.store offset=24
   i32.const 1
   local.set $step|16
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|17
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|16
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|17
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.4
  end
  i32.load8_u
  local.tee $loaded
  i32.const 15
  i32.and
  i32.const 28
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.5 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|18
   i32.store offset=28
   i32.const 1
   local.set $step|19
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|20
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|19
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|20
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.5
  end
  i32.load8_u
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.6 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|21
   i32.store offset=32
   i32.const 1
   local.set $step|22
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|23
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|22
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|23
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.6
  end
  i32.load8_u
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.7 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|24
   i32.store offset=36
   i32.const 1
   local.set $step|25
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|26
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|25
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|26
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.7
  end
  i32.load8_u
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.8 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|27
   i32.store offset=40
   i32.const 1
   local.set $step|28
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|29
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|28
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|29
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.8
  end
  i32.load8_u
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.9 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|30
   i32.store offset=44
   i32.const 1
   local.set $step|31
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|32
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|31
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.9
  end
  i32.load8_u
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  local.set $33
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $33
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32 (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bytes (param $this i32) (result i32)
  (local $this|1 i32)
  (local $length i32)
  (local $buffer i32)
  (local $this|4 i32)
  (local $step i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|1
   i32.store
   local.get $this|1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.0
  end
  local.set $length
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $length
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $buffer
  i32.store offset=8
  local.get $buffer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.10 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|4
   i32.store offset=12
   local.get $length
   local.set $step
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=16
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.10
  end
  local.get $length
  memory.copy
  local.get $buffer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64 (param $this i32) (result i64)
  (local $loaded i64)
  (local $value i64)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|6 i32)
  (local $step|7 i32)
  (local $ptr|8 i32)
  (local $this|9 i32)
  (local $step|10 i32)
  (local $ptr|11 i32)
  (local $this|12 i32)
  (local $step|13 i32)
  (local $ptr|14 i32)
  (local $this|15 i32)
  (local $step|16 i32)
  (local $ptr|17 i32)
  (local $this|18 i32)
  (local $step|19 i32)
  (local $ptr|20 i32)
  (local $this|21 i32)
  (local $step|22 i32)
  (local $ptr|23 i32)
  (local $this|24 i32)
  (local $step|25 i32)
  (local $ptr|26 i32)
  (local $this|27 i32)
  (local $step|28 i32)
  (local $ptr|29 i32)
  (local $this|30 i32)
  (local $step|31 i32)
  (local $ptr|32 i32)
  (local $33 i32)
  (local $34 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.11 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store
   i32.const 1
   local.set $step
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.11
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.12 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|6
   i32.store offset=12
   i32.const 1
   local.set $step|7
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|8
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|7
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|8
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.12
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 7
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.13 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|9
   i32.store offset=16
   i32.const 1
   local.set $step|10
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|11
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|10
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|11
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.13
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 14
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.14 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|12
   i32.store offset=20
   i32.const 1
   local.set $step|13
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|14
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|13
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|14
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.14
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 21
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.15 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|15
   i32.store offset=24
   i32.const 1
   local.set $step|16
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|17
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|16
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|17
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.15
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 28
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.16 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|18
   i32.store offset=28
   i32.const 1
   local.set $step|19
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|20
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|19
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|20
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.16
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 35
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.17 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|21
   i32.store offset=32
   i32.const 1
   local.set $step|22
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|23
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|22
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|23
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.17
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 42
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.18 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|24
   i32.store offset=36
   i32.const 1
   local.set $step|25
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|26
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|25
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|26
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.18
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 49
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.19 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|27
   i32.store offset=40
   i32.const 1
   local.set $step|28
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|29
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|28
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|29
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.19
  end
  i64.load8_u
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 56
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.20 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|30
   i32.store offset=44
   i32.const 1
   local.set $step|31
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|32
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|31
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.20
  end
  i64.load8_u
  i64.const 1
  i64.and
  i64.const 63
  i64.shl
  i64.or
  local.set $value
  local.get $value
  local.set $34
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $34
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int64 (param $this i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#string (param $this i32) (result i32)
  (local $this|1 i32)
  (local $length i32)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|1
   i32.store
   local.get $this|1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.1
  end
  local.set $length
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.21 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store offset=8
   local.get $length
   local.set $step
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=12
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 4416
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.21
  end
  local.get $length
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint64 (param $this i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int32 (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip (param $this i32) (param $length i32)
  (local $this|2 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|5 i32)
  (local $step|6 i32)
  (local $ptr|7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.eq
  if
   loop $while-continue|0
    block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.22 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $this
     local.tee $this|2
     i32.store
     i32.const 1
     local.set $step
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.set $ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=8
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.get $step
     i32.add
     call $~lib/as-proto/assembly/Reader/Reader#set:ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:end
     i32.le_u
     i32.eqz
     if
      i32.const 224
      i32.const 4416
      i32.const 210
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $ptr
     br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.22
    end
    i32.load8_u
    i32.const 128
    i32.and
    if
     br $while-continue|0
    end
   end
  else
   block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.23 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.tee $this|5
    i32.store offset=12
    local.get $length
    local.set $step|6
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.set $ptr|7
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.get $step|6
    i32.add
    call $~lib/as-proto/assembly/Reader/Reader#set:ptr
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:end
    i32.le_u
    i32.eqz
    if
     i32.const 224
     i32.const 4416
     i32.const 210
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $ptr|7
    br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.23
   end
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType (param $this i32) (param $wireType i32)
  (local $2 i32)
  (local $this|3 i32)
  (local $this|4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $wireType
         local.set $2
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.VARINT
         i32.eq
         br_if $case0|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.FIXED_64
         i32.eq
         br_if $case1|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.LENGTH_DELIMITED
         i32.eq
         br_if $case2|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.START_GROUP
         i32.eq
         br_if $case3|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.FIXED_32
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $this
        local.set $5
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $5
        i32.const 0
        call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
        br $break|0
       end
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       i32.const 8
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
       br $break|0
      end
      local.get $this
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $5
      block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.2 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.tee $this|3
       i32.store offset=4
       local.get $this|3
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $5
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
       br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.2
      end
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
      br $break|0
     end
     loop $while-continue|1
      block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.3 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.tee $this|4
       i32.store offset=12
       local.get $this|4
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
       br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.3
      end
      i32.const 7
      i32.and
      local.tee $wireType
      global.get $~lib/as-proto/assembly/WireType/WireType.END_GROUP
      i32.ne
      if
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       local.get $wireType
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    local.get $this
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    i32.const 4
    call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
    br $break|0
   end
   i32.const 4528
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   local.get $wireType
   i32.const 10
   call $~lib/number/I32#toString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $5
   call $~lib/string/String.__concat
   i32.const 4416
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
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#uint32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $val i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store
  local.get $value
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|2
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $this|2
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $4
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $4
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $this|2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $5
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $5
  local.get $val
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#uint32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store
  local.get $value
  local.set $value|3
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|3
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|3
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|3
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|3
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|3
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bool (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $val i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store
  local.get $value
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  local.set $val
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $val
  i32.store8
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bool (param $this i32) (param $value i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bytes (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i32)
  (local $this|4 i32)
  (local $val i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $value|3
  global.get $~lib/memory/__stack_pointer
  local.get $this|2
  local.tee $this|4
  i32.store offset=8
  local.get $value|3
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|4
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $this|4
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    local.get $8
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $6
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $6
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $this|4
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $7
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $7
  local.get $val
  i32.store8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  memory.copy
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=12
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bytes (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i32)
  (local $this|4 i32)
  (local $value|5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store
  local.get $value
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $value|3
  global.get $~lib/memory/__stack_pointer
  local.get $this|2
  local.tee $this|4
  i32.store offset=8
  local.get $value|3
  local.set $value|5
  local.get $this|4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $this|4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|5
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|5
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|5
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|5
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|5
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/package/sys.aspect.mutableState (param $ctx i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $ctx
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState.instance
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/util/string/strtol<i32> (param $str i32) (param $radix i32) (result i32)
  (local $len i32)
  (local $ptr i32)
  (local $code i32)
  (local $sign i32)
  (local $6 i32)
  (local $num i32)
  (local $initial i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $str
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const 0
   drop
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $str
  local.set $ptr
  local.get $ptr
  i32.load16_u
  local.set $code
  loop $while-continue|0
   local.get $code
   call $~lib/util/string/isSpace
   if
    local.get $ptr
    i32.const 2
    i32.add
    local.tee $ptr
    i32.load16_u
    local.set $code
    local.get $len
    i32.const 1
    i32.sub
    local.set $len
    br $while-continue|0
   end
  end
  i32.const 1
  local.set $sign
  local.get $code
  i32.const 45
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $code
   i32.const 43
   i32.eq
  end
  if
   local.get $len
   i32.const 1
   i32.sub
   local.tee $len
   i32.eqz
   if
    i32.const 0
    drop
    i32.const 0
    local.set $10
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $10
    return
   end
   local.get $code
   i32.const 45
   i32.eq
   if
    i32.const -1
    local.set $sign
   end
   local.get $ptr
   i32.const 2
   i32.add
   local.tee $ptr
   i32.load16_u
   local.set $code
  end
  local.get $radix
  if
   local.get $radix
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $radix
    i32.const 36
    i32.gt_s
   end
   if
    i32.const 0
    drop
    i32.const 0
    local.set $10
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $10
    return
   end
   local.get $radix
   i32.const 16
   i32.eq
   if
    local.get $len
    i32.const 2
    i32.gt_s
    if (result i32)
     local.get $code
     i32.const 48
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $ptr
     i32.load16_u offset=2
     i32.const 32
     i32.or
     i32.const 120
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
    end
   end
  else
   local.get $code
   i32.const 48
   i32.eq
   if (result i32)
    local.get $len
    i32.const 2
    i32.gt_s
   else
    i32.const 0
   end
   if
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $ptr
        i32.load16_u offset=2
        i32.const 32
        i32.or
        local.set $6
        local.get $6
        i32.const 98
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 111
        i32.eq
        br_if $case1|1
        local.get $6
        i32.const 120
        i32.eq
        br_if $case2|1
        br $break|1
       end
       local.get $ptr
       i32.const 4
       i32.add
       local.set $ptr
       local.get $len
       i32.const 2
       i32.sub
       local.set $len
       i32.const 2
       local.set $radix
       br $break|1
      end
      local.get $ptr
      i32.const 4
      i32.add
      local.set $ptr
      local.get $len
      i32.const 2
      i32.sub
      local.set $len
      i32.const 8
      local.set $radix
      br $break|1
     end
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
     i32.const 16
     local.set $radix
     br $break|1
    end
   end
   local.get $radix
   i32.eqz
   if
    i32.const 10
    local.set $radix
   end
  end
  i32.const 0
  local.set $num
  local.get $len
  i32.const 1
  i32.sub
  local.set $initial
  block $while-break|2
   loop $while-continue|2
    local.get $len
    local.tee $9
    i32.const 1
    i32.sub
    local.set $len
    local.get $9
    if
     local.get $ptr
     i32.load16_u
     local.set $code
     local.get $code
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if
      local.get $code
      i32.const 48
      i32.sub
      local.set $code
     else
      local.get $code
      i32.const 65
      i32.sub
      i32.const 90
      i32.const 65
      i32.sub
      i32.le_u
      if
       local.get $code
       i32.const 65
       i32.const 10
       i32.sub
       i32.sub
       local.set $code
      else
       local.get $code
       i32.const 97
       i32.sub
       i32.const 122
       i32.const 97
       i32.sub
       i32.le_u
       if
        local.get $code
        i32.const 97
        i32.const 10
        i32.sub
        i32.sub
        local.set $code
       end
      end
     end
     local.get $code
     local.get $radix
     i32.ge_u
     if
      local.get $initial
      local.get $len
      i32.eq
      if
       i32.const 0
       drop
       i32.const 0
       local.set $10
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $10
       return
      end
      br $while-break|2
     end
     local.get $num
     local.get $radix
     i32.mul
     local.get $code
     i32.add
     local.set $num
     local.get $ptr
     i32.const 2
     i32.add
     local.set $ptr
     br $while-continue|2
    end
   end
  end
  local.get $sign
  local.get $num
  i32.mul
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32> (param $this i32) (param $value i32) (result i32)
  (local $value|2 i32)
  (local $radix i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  i32.const 1
  i32.eqz
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i32.eqz
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 1
  i32.eqz
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  block $~lib/builtins/i32.parse|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $value
   local.tee $value|2
   i32.store
   i32.const 10
   local.set $radix
   local.get $value|2
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   local.get $radix
   call $~lib/util/string/strtol<i32>
   br $~lib/builtins/i32.parse|inlined.0
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#constructor (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 87
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:key
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:val
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:loaded
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 672
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32>
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:val
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>#constructor (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 86
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState#get<i32> (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableStateValue<i32>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor (param $this i32) (param $data i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 90
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#set:data
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 10
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#get:data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData> (param $this i32) (param $typeUrl i32) (param $message i32) (param $encoder i32) (result i32)
  (local $uint8Array i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $encoder
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
  local.tee $uint8Array
  i32.store offset=8
  i32.const 0
  local.get $typeUrl
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $uint8Array
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#constructor (param $this i32) (param $nameSpace i32) (param $query i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 93
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:nameSpace
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:query
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $nameSpace
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:nameSpace
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $query
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#set:query
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest.encode (param $message i32) (param $writer i32)
  (local $query i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $message
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#get:nameSpace
  call $~lib/as-proto/assembly/Writer/Writer#int32@override
  global.get $~lib/memory/__stack_pointer
  local.get $message
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#get:query
  local.tee $query
  i32.store offset=8
  local.get $query
  i32.const 0
  i32.ne
  if
   local.get $writer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.const 18
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   local.get $writer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/as-proto/assembly/Writer/Writer#fork@override
   local.get $query
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $writer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.encode
   local.get $writer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/as-proto/assembly/Writer/Writer#ldelim@override
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#constructor (param $this i32) (param $result i32) (param $data i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 92
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:result
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:data
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $result
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:result
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $data
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:data
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#constructor
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#bool@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:success
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#string@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#set:message
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#constructor
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=12
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=16
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult.decode
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store offset=8
       local.get $6
       call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:result
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=16
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any.decode
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#set:data
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load
  call_indirect (type $2)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#query (param $this i32) (param $nameSpace i32) (param $query i32) (result i32)
  (local $contextQueryRequest i32)
  (local $encoded i32)
  (local $input i32)
  (local $inputPtr i32)
  (local $ret i32)
  (local $bytes i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $nameSpace
  local.get $query
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest#constructor
  local.tee $contextQueryRequest
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $contextQueryRequest
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  i32.const 6448
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest>
  local.tee $encoded
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $input
  i32.store offset=16
  local.get $input
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $encoded
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
  local.get $input
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
  local.set $inputPtr
  local.get $inputPtr
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.query
  local.set $ret
  local.get $ret
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 1728
   i32.const 46
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $bytes
  i32.store offset=20
  local.get $bytes
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $ret
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  local.get $bytes
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=24
  local.get $9
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  i32.const 6480
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>@varargs
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor
  local.tee $message
  i32.store offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case1|1
      block $case0|1
       local.get $tag
       i32.const 3
       i32.shr_u
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#string@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=8
      local.get $6
      call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#set:data
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load
  call_indirect (type $2)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
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
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#reload (param $this i32)
  (local $sateChangeQuery i32)
  (local $query i32)
  (local $response i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:key
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#constructor
  local.tee $sateChangeQuery
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/messageUtil
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=20
  local.get $6
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#get:StringData
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $sateChangeQuery
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  i32.const 6416
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#ToAny<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>
  local.tee $query
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/runtimeContext
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  global.get $~lib/@artela/aspect-libs/proto/aspect/v2/query-name-space/QueryNameSpace.QueryAspectState
  local.get $query
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#query
  local.tee $response
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $response
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:result
  local.tee $4
  i32.store offset=32
  local.get $4
  if (result i32)
   local.get $4
  else
   i32.const 1360
   i32.const 3424
   i32.const 104
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:success
  i32.eqz
  if
   i32.const 0
   i32.const 3424
   i32.const 105
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/convertUtil
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $response
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:data
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 672
  else
   global.get $~lib/memory/__stack_pointer
   local.get $response
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=44
   local.get $6
   call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:data
   local.tee $5
   i32.store offset=48
   local.get $5
   if (result i32)
    local.get $5
   else
    i32.const 1360
    i32.const 3424
    i32.const 110
    i32.const 39
    call $~lib/builtins/abort
    unreachable
   end
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=40
   local.get $6
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:value
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=20
   local.get $6
   i32.const 6512
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=36
   local.get $6
   i32.const 2
   global.set $~argumentsLength
   i32.const 0
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>@varargs
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=16
   local.get $6
   call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#get:data
  end
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<i32>
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:val
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#set:loaded
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#unwrap (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:loaded
  i32.eqz
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#reload
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#get:val
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.UTF8.encode (param $str i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $buf i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $str
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $nullTerminated
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buf
  i32.store offset=4
  local.get $str
  local.get $str
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/string/String#get:length
  local.get $buf
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  local.get $buf
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $str i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $nullTerminated
   end
   i32.const 0
   local.set $errorMode
  end
  local.get $str
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encode
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array.wrap (param $buffer i32) (param $byteOffset i32) (param $length i32) (result i32)
  (local $buffer|3 i32)
  (local $byteOffset|4 i32)
  (local $len i32)
  (local $byteLength i32)
  (local $bufferByteLength i32)
  (local $out i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/typedarray/WRAP<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $buffer
   local.tee $buffer|3
   i32.store
   local.get $byteOffset
   local.set $byteOffset|4
   local.get $length
   local.set $len
   local.get $buffer|3
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=4
   local.get $9
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $bufferByteLength
   local.get $byteOffset|4
   local.get $bufferByteLength
   i32.gt_u
   local.get $byteOffset|4
   i32.const 0
   i32.and
   i32.or
   if
    i32.const 224
    i32.const 3728
    i32.const 1860
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $len
   i32.const 0
   i32.lt_s
   if
    local.get $len
    i32.const -1
    i32.eq
    if
     local.get $bufferByteLength
     i32.const 0
     i32.and
     if
      i32.const 528
      i32.const 3728
      i32.const 1865
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
     local.get $bufferByteLength
     local.get $byteOffset|4
     i32.sub
     local.set $byteLength
    else
     i32.const 528
     i32.const 3728
     i32.const 1869
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
   else
    local.get $len
    i32.const 0
    i32.shl
    local.set $byteLength
    local.get $byteOffset|4
    local.get $byteLength
    i32.add
    local.get $bufferByteLength
    i32.gt_s
    if
     i32.const 528
     i32.const 3728
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
   local.tee $out
   i32.store offset=8
   local.get $out
   local.get $buffer|3
   i32.store
   local.get $out
   local.get $buffer|3
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $out
   local.get $byteLength
   i32.store offset=8
   local.get $out
   local.get $buffer|3
   local.get $byteOffset|4
   i32.add
   i32.store offset=4
   local.get $out
   br $~lib/typedarray/WRAP<~lib/typedarray/Uint8Array,u8>|inlined.0
  end
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/typedarray/Uint8Array.wrap@varargs (param $buffer i32) (param $byteOffset i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $byteOffset
   end
   i32.const -1
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $byteOffset
  local.get $length
  call $~lib/typedarray/Uint8Array.wrap
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $encoded i32)
  (local $i i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#get:dataLen
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  call $~lib/memory/heap.alloc
  local.set $ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#store
  local.get $ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:body
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap@varargs
  local.tee $encoded
  i32.store offset=12
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $encoded
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   i32.lt_s
   if
    local.get $bodyPtr
    local.get $encoded
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    local.get $i
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    memory.fill
    local.get $bodyPtr
    i32.const 1
    i32.add
    local.set $bodyPtr
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $ptr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log (param $this i32) (param $data i32)
  (local $dataPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.get $data
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
  local.set $dataPtr
  local.get $dataPtr
  call $~lib/@artela/aspect-libs/hostapi/util-api/__UtilApi__.sLog
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/package/sys.log (param $data i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $data
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#constructor (param $this i32) (param $key i32) (param $aspectId i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 97
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $key
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:key
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $aspectId
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:aspectId
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:val
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:loaded
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 672
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<~lib/string/String>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:val
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String> (param $this i32) (param $key i32) (param $aspectId i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.get $key
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $aspectId
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 3856
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 6880
   i32.const 3856
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#addAll (param $this i32) (param $key i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $key
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#get:parts
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $key
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $i
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#add (param $this i32) (param $key i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#get:parts
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<~lib/string/String>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 51
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 528
   i32.const 3856
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<~lib/string/String>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<~lib/string/String>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<~lib/string/String>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#constructor (param $this i32) (param $key i32) (param $prefixes i32) (param $convert i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 104
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#set:parts
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#set:resultUnwrap
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $prefixes
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#addAll
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#add
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $convert
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#set:resultUnwrap
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#constructor@varargs (param $this i32) (param $key i32) (param $prefixes i32) (param $convert i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 2
    i32.const 51
    i32.const 7040
    call $~lib/rt/__newArray
    local.tee $prefixes
    i32.store
   end
   i32.const 0
   local.set $convert
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $key
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  local.get $prefixes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  local.get $convert
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#constructor
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/TxKey#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 102
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 7008
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#constructor@varargs
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#addAll (param $this i32) (param $key i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $key
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/array/Array<~lib/string/String>#get:length
   i32.lt_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    local.get $key
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=8
    local.get $3
    local.get $i
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#add (param $this i32) (param $key i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<~lib/string/String>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor (param $this i32) (param $key i32) (param $prefixes i32) (param $convert i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 107
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.const 0
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#set:parts
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#set:resultUnwrap
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $prefixes
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#addAll
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#add
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $convert
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#set:resultUnwrap
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/MappingKey#constructor (param $this i32) (param $parent i32) (param $prefixes i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 106
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $parent
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $prefixes
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 0
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/TxKey#get:context (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 0
  i32.const 7072
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/@artela/aspect-libs/common/key-path/ResultNotImplemented>#get:parts
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/@artela/aspect-libs/common/key-tx/MappingKey#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 109
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/common/key-tx/MappingKey#property (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  i32.const 0
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/@artela/aspect-libs/common/result-convert/StringUnwrap#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 672
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 672
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/util/string/joinStringArray
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String#endsWith (param $this i32) (param $search i32) (param $end i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $searchLength i32)
  (local $searchStart i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $end
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $5
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/string/String#get:length
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $end
  local.get $search
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/string/String#get:length
  local.set $searchLength
  local.get $end
  local.get $searchLength
  i32.sub
  local.set $searchStart
  local.get $searchStart
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $9
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $searchStart
  local.get $search
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  i32.const 0
  local.get $searchLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/string/String#endsWith@varargs (param $this i32) (param $search i32) (param $end i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/string/String.MAX_LENGTH
   local.set $end
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $search
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $end
  call $~lib/string/String#endsWith
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $out i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.set $len
  local.get $len
  i32.const 0
  i32.le_s
  if
   i32.const 672
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $start
  i32.const 1
  i32.shl
  i32.add
  local.get $len
  i32.const 1
  i32.shl
  memory.copy
  local.get $out
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#toString (param $this i32) (result i32)
  (local $path i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<~lib/string/String>#get:length
  i32.const 0
  i32.eq
  if
   i32.const 672
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#get:parts
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 7120
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $path
  i32.store offset=12
  local.get $path
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 7120
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String#endsWith@varargs
  if
   global.get $~lib/memory/__stack_pointer
   local.get $path
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 0
   local.get $path
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $~lib/string/String#get:length
   i32.const 1
   i32.sub
   call $~lib/string/String#slice
   local.tee $path
   i32.store offset=12
  end
  local.get $path
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set (param $this i32) (param $s i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get (param $this i32) (param $key i32) (result i32)
  (local $inputKey i32)
  (local $inPtr i32)
  (local $ret i32)
  (local $bytes i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 672
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#constructor
  local.tee $inputKey
  i32.store offset=4
  local.get $inputKey
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $key
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#set
  local.get $inputKey
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AString#store
  local.set $inPtr
  local.get $inPtr
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.get
  local.set $ret
  local.get $ret
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 1728
   i32.const 89
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $bytes
  i32.store offset=12
  local.get $bytes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  local.get $ret
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#load
  local.get $bytes
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=16
  local.get $6
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#get
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  i32.const 6480
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=8
  local.get $6
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>@varargs
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#reload (param $this i32)
  (local $path i32)
  (local $response i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill
  global.get $~lib/memory/__stack_pointer
  call $~lib/@artela/aspect-libs/common/key-path/ContextKey.get:tx
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $~lib/@artela/aspect-libs/common/key-tx/TxKey#get:context
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:key
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $~lib/@artela/aspect-libs/common/key-tx/MappingKey#property
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/@artela/aspect-libs/common/key-path/Key<~lib/string/String>#toString
  local.tee $path
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $path
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#get
  local.tee $response
  i32.store offset=20
  local.get $response
  i32.eqz
  if
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.const 7152
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
  end
  local.get $response
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:result
  i32.eqz
  if
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.const 7216
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
  end
  local.get $response
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $response
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:result
   i32.eqz
  end
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $response
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:result
   local.tee $3
   i32.store offset=24
   local.get $3
   if (result i32)
    local.get $3
   else
    i32.const 1360
    i32.const 6688
    i32.const 53
    i32.const 43
    call $~lib/builtins/abort
    unreachable
   end
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/@artela/aspect-libs/proto/aspect/v2/run-result/RunResult#get:success
   i32.eqz
  end
  if
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   i32.const 7280
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#log
   i32.const 0
   i32.const 6688
   i32.const 55
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $response
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=28
  local.get $5
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:data
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 672
  else
   global.get $~lib/memory/__stack_pointer
   local.get $response
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=44
   local.get $5
   call $~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse#get:data
   local.tee $4
   i32.store offset=48
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 1360
    i32.const 6688
    i32.const 61
    i32.const 39
    call $~lib/builtins/abort
    unreachable
   end
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=40
   local.get $5
   call $~lib/@artela/aspect-libs/proto/google/protobuf/any/Any#get:value
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=32
   local.get $5
   i32.const 6512
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=36
   local.get $5
   i32.const 2
   global.set $~argumentsLength
   i32.const 0
   call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>@varargs
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   call $~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData#get:data
  end
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#fromString<~lib/string/String>
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:val
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set:loaded
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:loaded
  i32.eqz
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#reload
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:val
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.__not (param $str i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $str
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $str
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/string/String#get:length
   i32.eqz
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#toString<~lib/string/String> (param $this i32) (param $value i32) (result i32)
  (local $valueStr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  if
   i32.const 672
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 0
  local.set $valueStr
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $valueStr
  i32.store offset=4
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  local.get $valueStr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 672
   local.tee $valueStr
   i32.store offset=4
  end
  local.get $valueStr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#constructor (param $this i32) (param $nameSpace i32) (param $key i32) (param $value i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 110
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:nameSpace
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:key
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:value
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $nameSpace
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:nameSpace
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:key
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#set:value
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:nameSpace
  call $~lib/as-proto/assembly/Writer/Writer#int32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 26
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#get:value
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load
  call_indirect (type $0)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#load (param $this i32) (param $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:head
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $ptr
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#load
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $bodyPtr
  i32.load8_u
  i32.const 0
  i32.ne
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#set:body
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get:body
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#set (param $this i32) (param $dataSpace i32) (param $key i32) (param $value i32) (result i32)
  (local $contextQueryRequest i32)
  (local $encoded i32)
  (local $input i32)
  (local $inputPtr i32)
  (local $ret i32)
  (local $bytes i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $dataSpace
  local.get $key
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  local.get $value
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest#constructor
  local.tee $contextQueryRequest
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $contextQueryRequest
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  i32.const 7472
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest>
  local.tee $encoded
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#constructor@varargs
  local.tee $input
  i32.store offset=16
  local.get $input
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  local.get $encoded
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#set
  local.get $input
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/AUint8Array#store
  local.set $inputPtr
  local.get $inputPtr
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/__RuntimeContextApi__.set
  local.set $ret
  local.get $ret
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 1728
   i32.const 76
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#constructor
  local.tee $bytes
  i32.store offset=20
  local.get $bytes
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  local.get $ret
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#load
  local.get $bytes
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/@artela/aspect-libs/common/wraptypes/basic-types/ABool#get
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set<~lib/string/String> (param $this i32) (param $value i32) (result i32)
  (local $dataStr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/utils
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/@artela/aspect-libs/common/helper/convert/ConvertUtil#toString<~lib/string/String>
  local.tee $dataStr
  i32.store offset=8
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/runtimeContext
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  global.get $~lib/@artela/aspect-libs/proto/aspect/v2/set-name-space/SetNameSpace.SetAspectContext
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#get:key
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $dataStr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#set
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/aspect/aspect/StoreAspect#preContractCall (param $this i32) (param $ctx i32)
  (local $val1 i32)
  (local $n11 i32)
  (local $val i32)
  (local $n1 i32)
  (local $n2 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $ctx
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/@artela/aspect-libs/package/sys.aspect.mutableState
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 6368
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState#get<i32>
  local.tee $val1
  i32.store offset=12
  local.get $val1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-state/ImmutableStateValue<i32>#unwrap
  local.set $n11
  i32.const 6544
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $n11
  i32.const 10
  call $~lib/number/I32#toString
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/string/String.__concat
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/package/sys.log
  global.get $~lib/memory/__stack_pointer
  local.get $ctx
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=16
  local.get $7
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PreContractCallCtx#get:aspect
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 6832
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 672
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String>
  local.tee $val
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $val
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
  local.tee $n1
  i32.store offset=24
  i32.const 7344
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $n1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/string/String.__concat
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/package/sys.log
  local.get $val
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $n1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  i32.const 7440
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=16
  local.get $7
  call $~lib/string/String.__concat
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#set<~lib/string/String>
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $val
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
  local.tee $n2
  i32.store offset=28
  i32.const 7504
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $n2
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $~lib/string/String.__concat
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/@artela/aspect-libs/package/sys.log
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/aspect/aspect/StoreAspect#postContractCall (param $this i32) (param $ctx i32)
  (local $v2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $ctx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=16
  local.get $3
  call $~lib/@artela/aspect-libs/types/paramter/contract-call-ctx/PostContractCallCtx#get:aspect
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 6832
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 672
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#transientStorage<~lib/string/String>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/components/aspect/aspect-context/TransientStorageValue<~lib/string/String>#unwrap
  local.tee $v2
  i32.store offset=20
  i32.const 7600
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $v2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $~lib/string/String.__concat
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/@artela/aspect-libs/package/sys.log
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 3856
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#fork (param $this i32)
  (local $this|1 i32)
  (local $2 i32)
  (local $this|3 i32)
  (local $value i32)
  (local $this|5 i32)
  (local $val i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|3
  i32.store
  block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|1
   i32.store offset=4
   local.get $this|1
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=8
   local.get $9
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
   local.get $this|1
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=16
   local.get $9
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=12
   local.get $9
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=8
   local.get $9
   call $~lib/array/Array<i32>#get:length
   i32.ge_s
   if (result i32)
    i32.const 0
   else
    local.get $this|1
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=16
    local.get $9
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=12
    local.get $9
    call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    local.get $this|1
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=12
    local.get $9
    local.get $this|1
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=16
    local.get $9
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
    local.tee $2
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
    local.get $2
    call $~lib/array/Array<i32>#__get
   end
   br $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.0
  end
  local.set $value
  global.get $~lib/memory/__stack_pointer
  local.get $this|3
  local.tee $this|5
  i32.store offset=20
  local.get $value
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|5
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=8
    local.get $9
    local.get $this|5
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store offset=12
    local.get $9
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $7
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $7
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|5
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=8
  local.get $9
  local.get $this|5
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=12
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $8
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $8
  local.get $val
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u32>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<u32>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<u32>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<i32>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<i32>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<i32>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#fork (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  call $~lib/array/Array<u32>#push
  drop
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/array/Array<i32>#get:length
  call $~lib/array/Array<i32>#push
  drop
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $3 i32)
  (local $len i32)
  (local $this|5 i32)
  (local $value|6 i32)
  (local $this|7 i32)
  (local $val i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $this|2
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=4
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
   local.get $this|2
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=12
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=8
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store offset=4
   local.get $11
   call $~lib/array/Array<i32>#get:length
   i32.ge_s
   if (result i32)
    i32.const 0
   else
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=12
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
    local.tee $3
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
    local.get $3
    call $~lib/array/Array<i32>#__get
   end
   br $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.1
  end
  local.set $len
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|5
  i32.store offset=16
  local.get $len
  local.set $value|6
  global.get $~lib/memory/__stack_pointer
  local.get $this|5
  local.tee $this|7
  i32.store offset=20
  local.get $value|6
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|7
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=4
    local.get $11
    local.get $this|7
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store offset=8
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $9
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $9
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|7
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $this|7
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $10
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $10
  local.get $val
  i32.store8
  local.get $value
  local.get $value
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $~lib/string/String#get:length
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  i32.const 0
  i32.const 3
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encodeUnsafe@varargs
  drop
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=4
  local.get $11
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store offset=8
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $len
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#string (param $this i32) (param $value i32)
  (local $len i32)
  (local $this|3 i32)
  (local $value|4 i32)
  (local $this|5 i32)
  (local $value|6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $value
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  local.set $len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $len
  call $~lib/array/Array<i32>#push
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|3
  i32.store offset=8
  local.get $len
  local.set $value|4
  global.get $~lib/memory/__stack_pointer
  local.get $this|3
  local.tee $this|5
  i32.store offset=12
  local.get $value|4
  local.set $value|6
  local.get $this|5
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $this|5
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|6
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|6
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|6
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|6
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|6
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $len
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<u32>#pop (param $this i32) (result i32)
  (local $len i32)
  (local $val i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u32>#get:length_
  local.set $len
  local.get $len
  i32.const 1
  i32.lt_s
  if
   i32.const 7904
   i32.const 3856
   i32.const 271
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u32>#get:dataStart
  local.get $len
  i32.const 1
  i32.sub
  local.tee $len
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $val
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $len
  call $~lib/array/Array<u32>#set:length_
  local.get $val
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#pop (param $this i32) (result i32)
  (local $len i32)
  (local $val i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  local.set $len
  local.get $len
  i32.const 1
  i32.lt_s
  if
   i32.const 7904
   i32.const 3856
   i32.const 271
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $len
  i32.const 1
  i32.sub
  local.tee $len
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $val
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $len
  call $~lib/array/Array<i32>#set:length_
  local.get $val
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<i32>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 3856
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#ldelim (param $this i32)
  (local $endPos i32)
  (local $startPos i32)
  (local $idx i32)
  (local $len i32)
  (local $this|5 i32)
  (local $value i32)
  (local $this|7 i32)
  (local $value|8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/array/Array<u32>#get:length
  if (result i32)
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=4
   local.get $9
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   call $~lib/array/Array<i32>#get:length
  else
   i32.const 0
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 7696
   i32.const 7792
   i32.const 126
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.set $endPos
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/array/Array<u32>#pop
  local.set $startPos
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/array/Array<i32>#pop
  local.set $idx
  local.get $endPos
  local.get $startPos
  i32.sub
  local.set $len
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $idx
  local.get $len
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|5
  i32.store offset=8
  local.get $len
  local.set $value
  global.get $~lib/memory/__stack_pointer
  local.get $this|5
  local.tee $this|7
  i32.store offset=12
  local.get $value
  local.set $value|8
  local.get $this|7
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $this|7
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|8
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|8
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|8
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|8
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|8
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#int32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i64)
  (local $this|4 i32)
  (local $val i64)
  (local $6 i32)
  (local $7 i32)
  (local $this|8 i32)
  (local $val|9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $value
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $value
   i64.extend_i32_s
   local.set $value|3
   global.get $~lib/memory/__stack_pointer
   local.get $this|2
   local.tee $this|4
   i32.store offset=4
   local.get $value|3
   local.set $val
   loop $while-continue|0
    local.get $val
    i64.const 127
    i64.gt_u
    if
     local.get $this|4
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=8
     local.get $12
     local.get $this|4
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=12
     local.get $12
     call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
     local.tee $6
     i32.const 1
     i32.add
     call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
     local.get $6
     local.get $val
     i64.const 127
     i64.and
     i64.const 128
     i64.or
     i64.store8
     local.get $val
     i64.const 7
     i64.shr_u
     local.set $val
     br $while-continue|0
    end
   end
   local.get $this|4
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=8
   local.get $12
   local.get $this|4
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=12
   local.get $12
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
   local.tee $7
   i32.const 1
   i32.add
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
   local.get $7
   local.get $val
   i64.store8
  else
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|8
   i32.store offset=16
   local.get $value
   local.set $val|9
   loop $while-continue|1
    local.get $val|9
    i32.const 127
    i32.gt_u
    if
     local.get $this|8
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=8
     local.get $12
     local.get $this|8
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store offset=12
     local.get $12
     call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
     local.tee $10
     i32.const 1
     i32.add
     call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
     local.get $10
     local.get $val|9
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $val|9
     i32.const 7
     i32.shr_u
     local.set $val|9
     br $while-continue|1
    end
   end
   local.get $this|8
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=8
   local.get $12
   local.get $this|8
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=12
   local.get $12
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
   local.tee $11
   i32.const 1
   i32.add
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
   local.get $11
   local.get $val|9
   i32.store8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#int32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $value
  i32.const 0
  i32.lt_s
  if
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
   i32.const 10
   i32.add
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  else
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store offset=8
   local.get $value
   local.set $value|3
   local.get $this|2
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   local.get $4
   local.get $this|2
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
   local.get $value|3
   i32.const 0
   i32.lt_u
   if (result i32)
    i32.const 10
   else
    local.get $value|3
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $value|3
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $value|3
      i32.const 2097152
      i32.lt_u
      if (result i32)
       i32.const 3
      else
       local.get $value|3
       i32.const 268435456
       i32.lt_u
       if (result i32)
        i32.const 4
       else
        i32.const 5
       end
      end
     end
    end
   end
   i32.add
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bool (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
  i32.const 0
  i32.ne
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<u32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/@artela/aspect-libs/proto/aspect/v2/eth-access-tuple/EthAccessTuple>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u64>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-tx-aspect/EthTxAspect>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bool-data/BoolData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/bytes-data/BytesData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/eth-transaction/EthTransaction>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/aspect-response/AspectResponse%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-query-request/ContextQueryRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/context-query-response/ContextQueryResponse>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>~lib/@artela/aspect-libs/proto/aspect/v2/string-data/StringData>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/@artela/aspect-libs/proto/aspect/v2/context-set-request/ContextSetRequest%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store offset=4
  local.get $array
  local.get $bufferSize
  i32.store offset=8
  local.get $array
  local.get $length
  i32.store offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/crypto-api/CryptoApi._ins
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 1488
   i32.const 31
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/schedule-api/ScheduleApi._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 1600
   i32.const 29
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/runtime-api/RuntimeContextApi._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 1728
   i32.const 35
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/common/helper/message/MessageUtil.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/common/helper/message/MessageUtil#constructor
   global.set $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/common/helper/message/MessageUtil._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 2272
   i32.const 22
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/evm-call-api/EvmCallApi._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 3056
   i32.const 25
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/statedb-api/StateDbApi._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 3184
   i32.const 78
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi#constructor
   global.set $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/hostapi/util-api/UtilApi._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 3312
   i32.const 22
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty#constructor
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/AspectProperty._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 3424
   i32.const 45
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $buf i32) (param $len i32) (param $nullTerminated i32) (result i32)
  (local $bufOff i32)
  (local $bufEnd i32)
  (local $str i32)
  (local $strOff i32)
  (local $u0 i32)
  (local $u1 i32)
  (local $u2 i32)
  (local $lo i32)
  (local $hi i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $buf
  local.set $bufOff
  local.get $buf
  local.get $len
  i32.add
  local.set $bufEnd
  local.get $bufEnd
  local.get $bufOff
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 3568
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $str
  i32.store
  local.get $str
  local.set $strOff
  block $while-break|0
   loop $while-continue|0
    local.get $bufOff
    local.get $bufEnd
    i32.lt_u
    if
     local.get $bufOff
     i32.load8_u
     local.set $u0
     local.get $bufOff
     i32.const 1
     i32.add
     local.set $bufOff
     local.get $u0
     i32.const 128
     i32.and
     i32.eqz
     if
      local.get $nullTerminated
      local.get $u0
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $strOff
      local.get $u0
      i32.store16
     else
      local.get $bufEnd
      local.get $bufOff
      i32.eq
      if
       br $while-break|0
      end
      local.get $bufOff
      i32.load8_u
      i32.const 63
      i32.and
      local.set $u1
      local.get $bufOff
      i32.const 1
      i32.add
      local.set $bufOff
      local.get $u0
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $strOff
       local.get $u0
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $u1
       i32.or
       i32.store16
      else
       local.get $bufEnd
       local.get $bufOff
       i32.eq
       if
        br $while-break|0
       end
       local.get $bufOff
       i32.load8_u
       i32.const 63
       i32.and
       local.set $u2
       local.get $bufOff
       i32.const 1
       i32.add
       local.set $bufOff
       local.get $u0
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $u0
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $u1
        i32.const 6
        i32.shl
        i32.or
        local.get $u2
        i32.or
        local.set $u0
       else
        local.get $bufEnd
        local.get $bufOff
        i32.eq
        if
         br $while-break|0
        end
        local.get $u0
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $u1
        i32.const 12
        i32.shl
        i32.or
        local.get $u2
        i32.const 6
        i32.shl
        i32.or
        local.get $bufOff
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set $u0
        local.get $bufOff
        i32.const 1
        i32.add
        local.set $bufOff
       end
       local.get $u0
       i32.const 65536
       i32.lt_u
       if
        local.get $strOff
        local.get $u0
        i32.store16
       else
        local.get $u0
        i32.const 65536
        i32.sub
        local.set $u0
        local.get $u0
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.set $lo
        local.get $u0
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        local.set $hi
        local.get $strOff
        local.get $lo
        local.get $hi
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $strOff
        i32.const 2
        i32.add
        local.set $strOff
       end
      end
     end
     local.get $strOff
     i32.const 2
     i32.add
     local.set $strOff
     br $while-continue|0
    end
   end
  end
  local.get $str
  local.get $strOff
  local.get $str
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PreTxExecuteCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 69
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/paramter/tx-execute-ctx/PostTxExecuteCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 77
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/paramter/commit-ctx/PostTxCommitCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 78
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/paramter/state-ctx/OperationCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 81
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockInitializeCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 83
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/types/paramter/block-ctx/OnBlockFinalizeCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 84
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 4592
   i32.const 4720
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 4784
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 33
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState.instance (param $ctx i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $ctx
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 3424
   i32.const 60
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState#constructor
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-state/MutableAspectState._instance
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 1360
   i32.const 3424
   i32.const 65
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 31
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext.instance (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
  i32.eqz
  if
   i32.const 0
   call $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext#constructor
   global.set $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
  end
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/@artela/aspect-libs/components/aspect/aspect-context/AspectContext._instance
  local.tee $0
  i32.store
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 1360
   i32.const 6688
   i32.const 27
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
)
