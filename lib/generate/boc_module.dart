part of 'tonsdkmodule.dart';

class BocModule extends _TonSdkModule {
  BocModule(TonSdkCore core) : super(core);

  ///Decodes tvc according to the tvc spec. Read more about tvc structure here https://github.com/tonlabs/ever-struct/blob/main/src/scheme/mod.rs#L30
  Future<ResultOfDecodeTvc> decode_tvc(ParamsOfDecodeTvc params) async {
    final res =
        await _tonCore.request('boc.decode_tvc', params.toString());
    return ResultOfDecodeTvc.fromMap(res);
  }

  ///JSON structure is compatible with GraphQL API message object
  Future<ResultOfParse> parse_message(ParamsOfParse params) async {
    final res =
        await _tonCore.request('boc.parse_message', params.toString());
    return ResultOfParse.fromMap(res);
  }

  ///JSON structure is compatible with GraphQL API transaction object
  Future<ResultOfParse> parse_transaction(ParamsOfParse params) async {
    final res = await _tonCore.request(
        'boc.parse_transaction', params.toString());
    return ResultOfParse.fromMap(res);
  }

  ///JSON structure is compatible with GraphQL API account object
  Future<ResultOfParse> parse_account(ParamsOfParse params) async {
    final res =
        await _tonCore.request('boc.parse_account', params.toString());
    return ResultOfParse.fromMap(res);
  }

  ///JSON structure is compatible with GraphQL API block object
  Future<ResultOfParse> parse_block(ParamsOfParse params) async {
    final res =
        await _tonCore.request('boc.parse_block', params.toString());
    return ResultOfParse.fromMap(res);
  }

  ///JSON structure is compatible with GraphQL API shardstate object
  Future<ResultOfParse> parse_shardstate(ParamsOfParseShardstate params) async {
    final res =
        await _tonCore.request('boc.parse_shardstate', params.toString());
    return ResultOfParse.fromMap(res);
  }

  ///Extract blockchain configuration from key block and also from zerostate.
  Future<ResultOfGetBlockchainConfig> get_blockchain_config(
      ParamsOfGetBlockchainConfig params) async {
    final res = await _tonCore.request(
        'boc.get_blockchain_config', params.toString());
    return ResultOfGetBlockchainConfig.fromMap(res);
  }

  ///Calculates BOC root hash
  Future<ResultOfGetBocHash> get_boc_hash(ParamsOfGetBocHash params) async {
    final res =
        await _tonCore.request('boc.get_boc_hash', params.toString());
    return ResultOfGetBocHash.fromMap(res);
  }

  ///Calculates BOC depth
  Future<ResultOfGetBocDepth> get_boc_depth(ParamsOfGetBocDepth params) async {
    final res =
        await _tonCore.request('boc.get_boc_depth', params.toString());
    return ResultOfGetBocDepth.fromMap(res);
  }

  ///Extracts code from TVC contract image
  Future<ResultOfGetCodeFromTvc> get_code_from_tvc(
      ParamsOfGetCodeFromTvc params) async {
    final res = await _tonCore.request(
        'boc.get_code_from_tvc', params.toString());
    return ResultOfGetCodeFromTvc.fromMap(res);
  }

  ///Get BOC from cache
  Future<ResultOfBocCacheGet> cache_get(ParamsOfBocCacheGet params) async {
    final res =
        await _tonCore.request('boc.cache_get', params.toString());
    return ResultOfBocCacheGet.fromMap(res);
  }

  ///Save BOC into cache or increase pin counter for existing pinned BOC
  Future<ResultOfBocCacheSet> cache_set(ParamsOfBocCacheSet params) async {
    final res =
        await _tonCore.request('boc.cache_set', params.toString());
    return ResultOfBocCacheSet.fromMap(res);
  }

  ///Unpin BOCs with specified pin defined in the `cache_set`. Decrease pin reference counter for BOCs with specified pin defined in the `cache_set`. BOCs which have only 1 pin and its reference counter become 0 will be removed from cache
  Future<void> cache_unpin(ParamsOfBocCacheUnpin params) async {
    await _tonCore.request('boc.cache_unpin', params.toString());
  }

  ///Encodes bag of cells (BOC) with builder operations. This method provides the same functionality as Solidity TvmBuilder. Resulting BOC of this method can be passed into Solidity and C++ contracts as TvmCell type.
  Future<ResultOfEncodeBoc> encode_boc(ParamsOfEncodeBoc params) async {
    final res =
        await _tonCore.request('boc.encode_boc', params.toString());
    return ResultOfEncodeBoc.fromMap(res);
  }

  ///Returns the contract code's salt if it is present.
  Future<ResultOfGetCodeSalt> get_code_salt(ParamsOfGetCodeSalt params) async {
    final res =
        await _tonCore.request('boc.get_code_salt', params.toString());
    return ResultOfGetCodeSalt.fromMap(res);
  }

  ///Returns the new contract code with salt.
  Future<ResultOfSetCodeSalt> set_code_salt(ParamsOfSetCodeSalt params) async {
    final res =
        await _tonCore.request('boc.set_code_salt', params.toString());
    return ResultOfSetCodeSalt.fromMap(res);
  }

  ///Decodes contract's initial state into code, data, libraries and special options.
  Future<ResultOfDecodeStateInit> decode_state_init(
      ParamsOfDecodeStateInit params) async {
    final res = await _tonCore.request(
        'boc.decode_state_init', params.toString());
    return ResultOfDecodeStateInit.fromMap(res);
  }

  ///Encodes initial contract state from code, data, libraries ans special options (see input params)
  Future<ResultOfEncodeStateInit> encode_state_init(
      ParamsOfEncodeStateInit params) async {
    final res = await _tonCore.request(
        'boc.encode_state_init', params.toString());
    return ResultOfEncodeStateInit.fromMap(res);
  }

  ///Allows to encode any external inbound message.
  Future<ResultOfEncodeExternalInMessage> encode_external_in_message(
      ParamsOfEncodeExternalInMessage params) async {
    final res = await _tonCore.request(
        'boc.encode_external_in_message', params.toString());
    return ResultOfEncodeExternalInMessage.fromMap(res);
  }

  ///Returns the compiler version used to compile the code.
  Future<ResultOfGetCompilerVersion> get_compiler_version(
      ParamsOfGetCompilerVersion params) async {
    final res = await _tonCore.request(
        'boc.get_compiler_version', params.toString());
    return ResultOfGetCompilerVersion.fromMap(res);
  }
}
