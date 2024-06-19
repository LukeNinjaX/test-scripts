import {
    ethereum,
    sys,
    StringData,
    MessageUtil,
    entryPoint,
    execute,
    allocate,
    PreContractCallInput,
    PostContractCallInput,
    uint8ArrayToHex,
    hexToUint8Array,
    BytesData,
    stringToUint8Array, JitCallBuilder, StaticCallRequest, CallTreeQuery, EthCallTree, uint8ArrayToAddress, Uint256, G1, G1Point, G2Point,
} from "@artela/aspect-libs";

import { IPreContractCallJP, IPostContractCallJP } from "@artela/aspect-libs/types/aspect-interface";
import { Protobuf } from "as-proto/assembly/Protobuf";

export class StressTestAspect implements IPreContractCallJP, IPostContractCallJP {
    preContractCall(ctx: PreContractCallInput): void {
        sys.log("---running joinpoint preContractCall");
        // for (let i = 0; i < 1000; i) {
        // }
        ///
        /// utils hostapi
        ///
        const hexStr = "6A";
        const encodedHex = hexToUint8Array(hexStr);
        const decodedHex = uint8ArrayToHex(encodedHex);
        sys.require(decodedHex != hexStr, "hexToUint8Array or uint8ArrayToHex error");
        // sys.hostApi.util.revert("error message");

        ///
        /// statedb hostapi
        ///
        const balance = sys.hostApi.stateDb.balance(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const state = sys.hostApi.stateDb.stateAt(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"), stringToUint8Array(""));
        const codeHash = sys.hostApi.stateDb.codeHash(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));
        const nonce = sys.hostApi.stateDb.nonce(hexToUint8Array("0xE2AF7C239b4F2800a2F742d406628b4fc4b8a0d4"));

        ///
        /// runtime context hostapi
        ///
        const txBytes = sys.hostApi.runtimeContext.get("tx.bytes");
        const txBytesData = Protobuf.decode<BytesData>(txBytes, BytesData.decode);

        const messageUtil = MessageUtil.instance();
        const key = "123";
        const sateChangeQuery = new StringData(key);
        const query = messageUtil.ToAny<StringData>(messageUtil.StringData,
            sateChangeQuery,
            StringData.encode,
        );

        const outPtr = sys.hostApi.aspectProperty.get(key);
        sys.hostApi.aspectState.set("key", stringToUint8Array("data"));


        let aspId = sys.aspect.id();
        let version = sys.aspect.version();

        ///
        /// crypto hostapi
        ///
        let cryptostr = stringToUint8Array("test");
        let keccakdata = sys.hostApi.crypto.keccak(cryptostr);
        let sha256data = sys.hostApi.crypto.sha256(cryptostr);
        let ripemd160data = sys.hostApi.crypto.ripemd160(cryptostr);
        // let ecRecoverdata = sys.hostApi.crypto.ecRecover(cryptostr);

        let walletAddress = "0xBed7f94DF2B8e44A963d52474E2aBDE05Ed2A86c";
        let callData = "test";

        {
            /*{
                let base = hexToUint8Array("03")
                let exp = hexToUint8Array("fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2e")
                let mod = hexToUint8Array("fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f")
                const expect = "0000000000000000000000000000000000000000000000000000000000000001";

                const bigModExpRet = sys.hostApi.crypto.bigModExp(base, exp, mod)
                this.check(expect, uint8ArrayToHex(bigModExpRet));
            }

            {
                let base = hexToUint8Array("0")
                let exp = hexToUint8Array("fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2e")
                let mod = hexToUint8Array("fffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f")
                const expect = "0000000000000000000000000000000000000000000000000000000000000000";

                const bigModExpRet = sys.hostApi.crypto.bigModExp(base, exp, mod)
                this.check(expect, uint8ArrayToHex(bigModExpRet));
            }*/

            /*{
                let base = hexToUint8Array("e09ad9675465c53a109fac66a445c91b292d2bb2c5268addb30cd82f80fcb0033ff97c80a5fc6f39193ae969c6ede6710a6b7ac27078a06d90ef1c72e5c85fb5")
                let exp = hexToUint8Array("02")
                let mod = hexToUint8Array("fc9e1f6beb81516545975218075ec2af118cd8798df6e08a147c60fd6095ac2bb02c2908cf4dd7c81f11c289e4bce98f3553768f392a80ce22bf5c4f4a248c6b")
                const expect = "60008f1614cc01dcfb6bfb09c625cf90b47d4468db81b5f8b7a39d42f332eab9b2da8f2d95311648a8f243f4bb13cfb3d8f7f2a3c014122ebb3ed41b02783adc";

                const bigModExpRet = sys.hostApi.crypto.bigModExp(base, exp, mod)
                this.check(expect, uint8ArrayToHex(bigModExpRet));
            }*/

            // out of gas
            {
                let base = hexToUint8Array("cad7d991a00047dd54d3399b6b0b937c718abddef7917c75b6681f40cc15e2be0003657d8d4c34167b2f0bbbca0ccaa407c2a6a07d50f1517a8f22979ce12a81dcaf707cc0cebfc0ce2ee84ee7f77c38b9281b9822a8d3de62784c089c9b18dcb9a2a5eecbede90ea788a862a9ddd9d609c2c52972d63e289e28f6a590ffbf51")
                let exp = hexToUint8Array("02")
                let mod = hexToUint8Array("e6d893b80aeed5e6e9ce9afa8a5d5675c93a32ac05554cb20e9951b2c140e3ef4e433068cf0fb73bc9f33af1853f64aa27a0028cbf570d7ac9048eae5dc7b28c87c31e5810f1e7fa2cda6adf9f1076dbc1ec1238560071e7efc4e9565c49be9e7656951985860a558a754594115830bcdb421f741408346dd5997bb01c287087")
                const expect = "981dd99c3b113fae3e3eaa9435c0dc96779a23c12a53d1084b4f67b0b053a27560f627b873e3f16ad78f28c94f14b6392def26e4d8896c5e3c984e50fa0b3aa44f1da78b913187c6128baa9340b1e9c9a0fd02cb78885e72576da4a8f7e5a113e173a7a2889fde9d407bd9f06eb05bc8fc7b4229377a32941a02bf4edcc06d70";

                const bigModExpRet = sys.hostApi.crypto.bigModExp(base, exp, mod)
                this.check(expect, uint8ArrayToHex(bigModExpRet));
            }

            // out of gas
            /*{
                let base = hexToUint8Array("c5a1611f8be90071a43db23cc2fe01871cc4c0e8ab5743f6378e4fef77f7f6db0095c0727e20225beb665645403453e325ad5f9aeb9ba99bf3c148f63f9c07cf4fe8847ad5242d6b7d4499f93bd47056ddab8f7dee878fc2314f344dbee2a7c41a5d3db91eff372c730c2fdd3a141a4b61999e36d549b9870cf2f4e632c4d5df5f024f81c028000073a0ed8847cfb0593d36a47142f578f05ccbe28c0c06aeb1b1da027794c48db880278f79ba78ae64eedfea3c07d10e0562668d839749dc95f40467d15cf65b9cfc52c7c4bcef1cda3596dd52631aac942f146c7cebd46065131699ce8385b0db1874336747ee020a5698a3d1a1082665721e769567f579830f9d259cec1a836845109c21cf6b25da572512bf3c42fd4b96e43895589042ab60dd41f497db96aec102087fe784165bb45f942859268fd2ff6c012d9d00c02ba83eace047cc5f7b2c392c2955c58a49f0338d6fc58749c9db2155522ac17914ec216ad87f12e0ee95574613942fa615898c4d9e8a3be68cd6afa4e7a003dedbdf8edfee31162b174f965b20ae752ad89c967b3068b6f722c16b354456ba8e280f987c08e0a52d40a2e8f3a59b94d590aeef01879eb7a90b3ee7d772c839c85519cbeaddc0c193ec4874a463b53fcaea3271d80ebfb39b33489365fc039ae549a17a9ff898eea2f4cb27b8dbee4c17b998438575b2b8d107e4a0d66ba7fca85b41a58a8d51f191a35c856dfbe8aef2b00048a694bbccff832d23c8ca7a7ff0b6c0b3011d00b97c86c0628444d267c951d9e4fb8f83e154b8f74fb51aa16535e498235c5597dac9606ed0be3173a3836baa4e7d756ffe1e2879b415d3846bccd538c05b847785699aefde3e305decb600cd8fb0e7d8de5efc26971a6ad4e6d7a2d91474f1023a0ac4b78dc937da0ce607a45974d2cac1c33a2631ff7fe6144a3b2e5cf98b531a9627dea92c1dc82204d09db0439b6a11dd64b484e1263aa45fd9539b6020b55e3baece3986a8bffc1003406348f5c61265099ed43a766ee4f93f5f9c5abbc32a0fd3ac2b35b87f9ec26037d88275bd7dd0a54474995ee34ed3727f3f97c48db544b1980193a4b76a8a3ddab3591ce527f16d91882e67f0103b5cda53f7da54d489fc4ac08b6ab358a5a04aa9daa16219d50bd672a7cb804ed769d218807544e5993f1c27427104b349906a0b654df0bf69328afd3013fbe430155339c39f236df5557bf92f1ded7ff609a8502f49064ec3d1dbfb6c15d3a4c11a4f8acd12278cbf68acd5709463d12e3338a6eddb8c112f199645e23154a8e60879d2a654e3ed9296aa28f134168619691cd2c6b9e2eba4438381676173fc63c2588a3c5910dc149cf3760f0aa9fa9c3f5faa9162b0bf1aac9dd32b706a60ef53cbdb394b6b40222b5bc80eea82ba8958386672564cae3794f977871ab62337cf")
                let exp = hexToUint8Array("010001")
                let mod = hexToUint8Array("e30049201ec12937e7ce79d0f55d9c810e20acf52212aca1d3888949e0e4830aad88d804161230eb89d4d329cc83570fe257217d2119134048dd2ed167646975fc7d77136919a049ea74cf08ddd2b896890bb24a0ba18094a22baa351bf29ad96c66bbb1a598f2ca391749620e62d61c3561a7d3653ccc8892c7b99baaf76bf836e2991cb06d6bc0514568ff0d1ec8bb4b3d6984f5eaefb17d3ea2893722375d3ddb8e389a8eef7d7d198f8e687d6a513983df906099f9a2d23f4f9dec6f8ef2f11fc0a21fac45353b94e00486f5e17d386af42502d09db33cf0cf28310e049c07e88682aeeb00cb833c5174266e62407a57583f1f88b304b7c6e0c84bbe1c0fd423072d37a5bd0aacf764229e5c7cd02473460ba3645cd8e8ae144065bf02d0dd238593d8e230354f67e0b2f23012c23274f80e3ee31e35e2606a4a3f31d94ab755e6d163cff52cbb36b6d0cc67ffc512aeed1dce4d7a0d70ce82f2baba12e8d514dc92a056f994adfb17b5b9712bd5186f27a2fda1f7039c5df2c8587fdc62f5627580c13234b55be4df3056050e2d1ef3218f0dd66cb05265fe1acfb0989d8213f2c19d1735a7cf3fa65d88dad5af52dc2bba22b7abf46c3bc77b5091baab9e8f0ddc4d5e581037de91a9f8dcbc69309be29cc815cf19a20a7585b8b3073edf51fc9baeb3e509b97fa4ecfd621e0fd57bd61cac1b895c03248ff12bdbc57509250df3517e8a3fe1d776836b34ab352b973d932ef708b14f7418f9eceb1d87667e61e3e758649cb083f01b133d37ab2f5afa96d6c84bcacf4efc3851ad308c1e7d9113624fce29fab460ab9d2a48d92cdb281103a5250ad44cb2ff6e67ac670c02fdafb3e0f1353953d6d7d5646ca1568dea55275a050ec501b7c6250444f7219f1ba7521ba3b93d089727ca5f3bbe0d6c1300b423377004954c5628fdb65770b18ced5c9b23a4a5a6d6ef25fe01b4ce278de0bcc4ed86e28a0a68818ffa40970128cf2c38740e80037984428c1bd5113f40ff47512ee6f4e4d8f9b8e8e1b3040d2928d003bd1c1329dc885302fbce9fa81c23b4dc49c7c82d29b52957847898676c89aa5d32b5b0e1c0d5a2b79a19d67562f407f19425687971a957375879d90c5f57c857136c17106c9ab1b99d80e69c8c954ed386493368884b55c939b8d64d26f643e800c56f90c01079d7c534e3b2b7ae352cefd3016da55f6a85eb803b85e2304915fd2001f77c74e28746293c46e4f5f0fd49cf988aafd0026b8e7a3bab2da5cdce1ea26c2e29ec03f4807fac432662b2d6c060be1c7be0e5489de69d0a6e03a4b9117f9244b34a0f1ecba89884f781c6320412413a00c4980287409a2a78c2cd7e65cecebbe4ec1c28cac4dd95f6998e78fc6f1392384331c9436aa10e10e2bf8ad2c4eafbcf276aa7bae64b74428911b3269c749338b0fc5075ad")
                const expect = "5a0eb2bdf0ac1cae8e586689fa16cd4b07dfdedaec8a110ea1fdb059dd5253231b6132987598dfc6e11f86780428982d50cf68f67ae452622c3b336b537ef3298ca645e8f89ee39a26758206a5a3f6409afc709582f95274b57b71fae5c6b74619ae6f089a5393c5b79235d9caf699d23d88fb873f78379690ad8405e34c19f5257d596580c7a6a7206a3712825afe630c76b31cdb4a23e7f0632e10f14f4e282c81a66451a26f8df2a352b5b9f607a7198449d1b926e27036810368e691a74b91c61afa73d9d3b99453e7c8b50fd4f09c039a2f2feb5c419206694c31b92df1d9586140cb3417b38d0c503c7b508cc2ed12e813a1c795e9829eb39ee78eeaf360a169b491a1d4e419574e712402de9d48d54c1ae5e03739b7156615e8267e1fb0a897f067afd11fb33f6e24182d7aaaaa18fe5bc1982f20d6b871e5a398f0f6f718181d31ec225cfa9a0a70124ed9a70031bdf0c1c7829f708b6e17d50419ef361cf77d99c85f44607186c8d683106b8bd38a49b5d0fb503b397a83388c5678dcfcc737499d84512690701ed621a6f0172aecf037184ddf0f2453e4053024018e5ab2e30d6d5363b56e8b41509317c99042f517247474ab3abc848e00a07f69c254f46f2a05cf6ed84e5cc906a518fdcfdf2c61ce731f24c5264f1a25fc04934dc28aec112134dd523f70115074ca34e3807aa4cb925147f3a0ce152d323bd8c675ace446d0fd1ae30c4b57f0eb2c23884bc18f0964c0114796c5b6d080c3d89175665fbf63a6381a6a9da39ad070b645c8bb1779506da14439a9f5b5d481954764ea114fac688930bc68534d403cff4210673b6a6ff7ae416b7cd41404c3d3f282fcd193b86d0f54d0006c2a503b40d5c3930da980565b8f9630e9493a79d1c03e74e5f93ac8e4dc1a901ec5e3b3e57049124c7b72ea345aa359e782285d9e6a5c144a378111dd02c40855ff9c2be9b48425cb0b2fd62dc8678fd151121cf26a65e917d65d8e0dacfae108eb5508b601fb8ffa370be1f9a8b749a2d12eeab81f41079de87e2d777994fa4d28188c579ad327f9957fb7bdecec5c680844dd43cb57cf87aeb763c003e65011f73f8c63442df39a92b946a6bd968a1c1e4d5fa7d88476a68bd8e20e5b70a99259c7d3f85fb1b65cd2e93972e6264e74ebf289b8b6979b9b68a85cd5b360c1987f87235c3c845d62489e33acf85d53fa3561fe3a3aee18924588d9c6eba4edb7a4d106b31173e42929f6f0c48c80ce6a72d54eca7c0fe870068b7a7c89c63cdda593f5b32d3cb4ea8a32c39f00ab449155757172d66763ed9527019d6de6c9f2416aa6203f4d11c9ebee1e1d3845099e55504446448027212616167eb36035726daa7698b075286f5379cd3e93cb3e0cf4f9cb8d017facbb5550ed32d5ec5400ae57e47e2bf78d1eaeff9480cc765ceff39db500";

                const bigModExpRet = sys.hostApi.crypto.bigModExp(base, exp, mod)
                this.check(expect, uint8ArrayToHex(bigModExpRet));
            }*/
        }

        /*{
            let ax = Uint256.fromHex("18b18acfb4c2c30276db5411368e7185b311dd124691610c5d3b74034e093dc9");
            let ay = Uint256.fromHex("063c909c4720840cb5134cb9f59fa749755796819658d32efc0d288198f37266");
            let bx = Uint256.fromHex("07c2b7f58a84bd6145f00c9c2bc0bb1a187f20ff2c92963a88019e7c6a014eed");
            let by = Uint256.fromHex("06614e20c147e940f2d70da3f74c9a17df361706a4485c742bd6788478fa17d7");
            let x = new G1Point(ax, ay);
            let y = new G1Point(bx, by);

            let expectx = "2243525c5efd4b9c3d3c45ac0ca3fe4dd85e830a4ce6b65fa1eeaee202839703";
            let expecty = "301d1d33be6da8e509df21cc35964723180eed7532537db9ae5e7d48f195c915";

            const addRet = sys.hostApi.crypto.bn256Add(x, y);
            this.check(expectx, addRet.x.toHex());
            this.check(expecty, addRet.y.toHex());
        }*/


        // /
        // / other calls
        // /
        let ethMessage = new StaticCallRequest();
        const from = sys.hostApi.aspectProperty.get("from");
        const to = sys.hostApi.aspectProperty.get("to");
        const data = sys.hostApi.aspectProperty.get("data");
        ethMessage.from = from
        ethMessage.to = to
        ethMessage.gas = 400000;
        ethMessage.data = data;
        let staticCallresult = sys.hostApi.evmCall.staticCall(ethMessage);

        // let request = new JitCallBuilder()
        //     .callData(stringToUint8Array(callData))
        //     .sender(hexToUint8 Array(walletAddress))
        //     .build();
        // let jitresponse = sys.hostApi.evmCall.jitCall(request);
    }

    private check(expect: string, actual: string): void {
        if (expect != actual) {
            sys.log("not equals, expect: " + expect + "; acutual: " + actual)
            sys.revert("not equals");
        }
        sys.log("----------passed---------");
    }

    postContractCall(ctx: PostContractCallInput): void {
        sys.log("---running joinpoint postContractCall");

        // Get the method of currently called contract.
        const currentCallMethod = ethereum.parseMethodSig(ctx.call!.data);


        // Define functions that are not allowed to be reentered.
        const noReentrantMethods: Array<string> = [
            ethereum.computeMethodSig('transfer()'),
            ethereum.computeMethodSig('transferFrom()')
        ];

        // Verify if the current method is within the scope of functions that are not susceptible to reentrancy.
        if (noReentrantMethods.includes(currentCallMethod)) {

            const callTreeQuery = new CallTreeQuery(-1);
            const queryCallTree = sys.hostApi.trace.queryCallTree(callTreeQuery);
            const ethCallTree = Protobuf.decode<EthCallTree>(queryCallTree, EthCallTree.decode);
            var size = ethCallTree.calls.size;
            var arrayKeys = ethCallTree.calls.keys();

            for (let i = 0; i < size; i++) {
                var key = arrayKeys[i];
                var oneCall = ethCallTree.calls.get(key);
                const parentCallMethod = ethereum.parseMethodSig(oneCall.data);
                if (noReentrantMethods.includes(parentCallMethod)) {
                    // If yes, revert the transaction.
                    // sys.revert(`illegal transaction: method reentered from ${currentCallMethod} to ${parentCallMethod}`);
                }
            }
        }
    }


    //****************************
    // unused methods
    //****************************

    isOwner(sender: Uint8Array): bool {
        return true;
    }

}

// 2.register aspect Instance
const aspect = new StressTestAspect()
entryPoint.setAspect(aspect)

// 3.must export it
export { execute, allocate }