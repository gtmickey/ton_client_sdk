part of 'tonsdktypes.dart';

class ClientErrorCode {
  late String _value;
  String get value => _value;
  ClientErrorCode.NotImplemented() {
    _value = 'NotImplemented';
  }
  ClientErrorCode.InvalidHex() {
    _value = 'InvalidHex';
  }
  ClientErrorCode.InvalidBase64() {
    _value = 'InvalidBase64';
  }
  ClientErrorCode.InvalidAddress() {
    _value = 'InvalidAddress';
  }
  ClientErrorCode.CallbackParamsCantBeConvertedToJson() {
    _value = 'CallbackParamsCantBeConvertedToJson';
  }
  ClientErrorCode.WebsocketConnectError() {
    _value = 'WebsocketConnectError';
  }
  ClientErrorCode.WebsocketReceiveError() {
    _value = 'WebsocketReceiveError';
  }
  ClientErrorCode.WebsocketSendError() {
    _value = 'WebsocketSendError';
  }
  ClientErrorCode.HttpClientCreateError() {
    _value = 'HttpClientCreateError';
  }
  ClientErrorCode.HttpRequestCreateError() {
    _value = 'HttpRequestCreateError';
  }
  ClientErrorCode.HttpRequestSendError() {
    _value = 'HttpRequestSendError';
  }
  ClientErrorCode.HttpRequestParseError() {
    _value = 'HttpRequestParseError';
  }
  ClientErrorCode.CallbackNotRegistered() {
    _value = 'CallbackNotRegistered';
  }
  ClientErrorCode.NetModuleNotInit() {
    _value = 'NetModuleNotInit';
  }
  ClientErrorCode.InvalidConfig() {
    _value = 'InvalidConfig';
  }
  ClientErrorCode.CannotCreateRuntime() {
    _value = 'CannotCreateRuntime';
  }
  ClientErrorCode.InvalidContextHandle() {
    _value = 'InvalidContextHandle';
  }
  ClientErrorCode.CannotSerializeResult() {
    _value = 'CannotSerializeResult';
  }
  ClientErrorCode.CannotSerializeError() {
    _value = 'CannotSerializeError';
  }
  ClientErrorCode.CannotConvertJsValueToJson() {
    _value = 'CannotConvertJsValueToJson';
  }
  ClientErrorCode.CannotReceiveSpawnedResult() {
    _value = 'CannotReceiveSpawnedResult';
  }
  ClientErrorCode.SetTimerError() {
    _value = 'SetTimerError';
  }
  ClientErrorCode.InvalidParams() {
    _value = 'InvalidParams';
  }
  ClientErrorCode.ContractsAddressConversionFailed() {
    _value = 'ContractsAddressConversionFailed';
  }
  ClientErrorCode.UnknownFunction() {
    _value = 'UnknownFunction';
  }
  ClientErrorCode.AppRequestError() {
    _value = 'AppRequestError';
  }
  ClientErrorCode.NoSuchRequest() {
    _value = 'NoSuchRequest';
  }
  ClientErrorCode.CanNotSendRequestResult() {
    _value = 'CanNotSendRequestResult';
  }
  ClientErrorCode.CanNotReceiveRequestResult() {
    _value = 'CanNotReceiveRequestResult';
  }
  ClientErrorCode.CanNotParseRequestResult() {
    _value = 'CanNotParseRequestResult';
  }
  ClientErrorCode.UnexpectedCallbackResponse() {
    _value = 'UnexpectedCallbackResponse';
  }
  ClientErrorCode.CanNotParseNumber() {
    _value = 'CanNotParseNumber';
  }
  ClientErrorCode.InternalError() {
    _value = 'InternalError';
  }
  ClientErrorCode.InvalidHandle() {
    _value = 'InvalidHandle';
  }
  ClientErrorCode.LocalStorageError() {
    _value = 'LocalStorageError';
  }
  ClientErrorCode.InvalidData() {
    _value = 'InvalidData';
  }
  @override
  String toString() {
    return '"$_value"';
  }

  ClientErrorCode.fromMap(str) {
    _value = str;
  }
}

class ClientError extends TonSdkStructure {
  int? _code;
  int? get code => _code;
  String? _message;
  String? get message => _message;
  dynamic? _data;
  dynamic? get data => _data;
  ClientError({
    required int code,
    required String message,
    required dynamic data,
  }) {
    _code = ArgumentError.checkNotNull(code, 'ClientError code');
    _message = ArgumentError.checkNotNull(message, 'ClientError message');
    _data = ArgumentError.checkNotNull(data, 'ClientError data');
  }
  ClientError.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('code') && (map['code'] != null)) {
      _code = map['code'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_code != null) {
      map['code'] = _code;
    }
    if (_message != null) {
      map['message'] = _message;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    return map;
  }
}

class ClientConfig extends TonSdkStructure {
  BindingConfig? _binding;
  BindingConfig? get binding => _binding;
  NetworkConfig? _network;
  NetworkConfig? get network => _network;
  CryptoConfig? _crypto;
  CryptoConfig? get crypto => _crypto;
  AbiConfig? _abi;
  AbiConfig? get abi => _abi;
  BocConfig? _boc;
  BocConfig? get boc => _boc;
  ProofsConfig? _proofs;
  ProofsConfig? get proofs => _proofs;

  ///For file based storage is a folder name where SDK will store its data. For browser based is a browser async storage key prefix. Default (recommended) value is "~/.tonclient" for native environments and ".tonclient" for web-browser.
  String? _local_storage_path;
  String? get local_storage_path => _local_storage_path;
  ClientConfig({
    BindingConfig? binding,
    NetworkConfig? network,
    CryptoConfig? crypto,
    AbiConfig? abi,
    BocConfig? boc,
    ProofsConfig? proofs,
    String? local_storage_path,
  }) {
    _binding = binding;
    _network = network;
    _crypto = crypto;
    _abi = abi;
    _boc = boc;
    _proofs = proofs;
    _local_storage_path = local_storage_path;
  }
  ClientConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('binding') && (map['binding'] != null)) {
      _binding = BindingConfig.fromMap(map['binding']);
    }
    if (map.containsKey('network') && (map['network'] != null)) {
      _network = NetworkConfig.fromMap(map['network']);
    }
    if (map.containsKey('crypto') && (map['crypto'] != null)) {
      _crypto = CryptoConfig.fromMap(map['crypto']);
    }
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = AbiConfig.fromMap(map['abi']);
    }
    if (map.containsKey('boc') && (map['boc'] != null)) {
      _boc = BocConfig.fromMap(map['boc']);
    }
    if (map.containsKey('proofs') && (map['proofs'] != null)) {
      _proofs = ProofsConfig.fromMap(map['proofs']);
    }
    if (map.containsKey('local_storage_path') &&
        (map['local_storage_path'] != null)) {
      _local_storage_path = map['local_storage_path'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_binding != null) {
      map['binding'] = _binding;
    }
    if (_network != null) {
      map['network'] = _network;
    }
    if (_crypto != null) {
      map['crypto'] = _crypto;
    }
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_boc != null) {
      map['boc'] = _boc;
    }
    if (_proofs != null) {
      map['proofs'] = _proofs;
    }
    if (_local_storage_path != null) {
      map['local_storage_path'] = _local_storage_path;
    }
    return map;
  }
}

class NetworkConfig extends TonSdkStructure {
  ///**This field is deprecated, but left for backward-compatibility.** Evernode endpoint.
  String? _server_address;
  String? get server_address => _server_address;

  ///Any correct URL format can be specified, including IP addresses. This parameter is prevailing over `server_address`.
  ///Check the full list of [supported network endpoints](https://docs.evercloud.dev/products/evercloud/networks-endpoints).
  List<String>? _endpoints;
  List<String>? get endpoints => _endpoints;

  ///You must use `network.max_reconnect_timeout` that allows to specify maximum network resolving timeout.
  int? _network_retries_count;
  int? get network_retries_count => _network_retries_count;

  ///Must be specified in milliseconds. Default is 120000 (2 min).
  int? _max_reconnect_timeout;
  int? get max_reconnect_timeout => _max_reconnect_timeout;

  ///Deprecated
  int? _reconnect_timeout;
  int? get reconnect_timeout => _reconnect_timeout;

  ///Default is 5.
  int? _message_retries_count;
  int? get message_retries_count => _message_retries_count;

  ///Must be specified in milliseconds. Default is 40000 (40 sec).
  int? _message_processing_timeout;
  int? get message_processing_timeout => _message_processing_timeout;

  ///Must be specified in milliseconds. Default is 40000 (40 sec).
  int? _wait_for_timeout;
  int? get wait_for_timeout => _wait_for_timeout;

  ///**DEPRECATED**: This parameter was deprecated.
  int? _out_of_sync_threshold;
  int? get out_of_sync_threshold => _out_of_sync_threshold;

  ///Default is 1.
  int? _sending_endpoint_count;
  int? get sending_endpoint_count => _sending_endpoint_count;

  ///Library periodically checks the current endpoint for blockchain data synchronization latency.
  ///If the latency (time-lag) is less then `NetworkConfig.max_latency`
  ///then library selects another endpoint.
  ///
  ///Must be specified in milliseconds. Default is 60000 (1 min).
  int? _latency_detection_interval;
  int? get latency_detection_interval => _latency_detection_interval;

  ///Must be specified in milliseconds. Default is 60000 (1 min).
  int? _max_latency;
  int? get max_latency => _max_latency;

  ///Is is used when no timeout specified for the request to limit the answer waiting time. If no answer received during the timeout requests ends with
  ///error.
  ///
  ///Must be specified in milliseconds. Default is 60000 (1 min).
  int? _query_timeout;
  int? get query_timeout => _query_timeout;

  ///`HTTP` or `WS`.
  ///Default is `HTTP`.
  NetworkQueriesProtocol? _queries_protocol;
  NetworkQueriesProtocol? get queries_protocol => _queries_protocol;

  ///First REMP status awaiting timeout. If no status received during the timeout than fallback transaction scenario is activated.
  ///
  ///Must be specified in milliseconds. Default is 1 (1 ms) in order to start fallback scenario
  ///together with REMP statuses processing while REMP is not properly tuned yet.
  int? _first_remp_status_timeout;
  int? get first_remp_status_timeout => _first_remp_status_timeout;

  ///Subsequent REMP status awaiting timeout. If no status received during the timeout than fallback transaction scenario is activated.
  ///
  ///Must be specified in milliseconds. Default is 5000 (5 sec).
  int? _next_remp_status_timeout;
  int? get next_remp_status_timeout => _next_remp_status_timeout;

  ///This parameter should be set to `global_id` field from any blockchain block if network can
  ///not be reachable at the moment of message encoding and the message is aimed to be sent into
  ///network with `CapSignatureWithId` enabled. Otherwise signature ID is detected automatically
  ///inside message encoding functions
  int? _signature_id;
  int? get signature_id => _signature_id;

  ///Access key to GraphQL API (Project secret)
  String? _access_key;
  String? get access_key => _access_key;
  NetworkConfig({
    String? server_address,
    List<String>? endpoints,
    int? network_retries_count,
    int? max_reconnect_timeout,
    int? reconnect_timeout,
    int? message_retries_count,
    int? message_processing_timeout,
    int? wait_for_timeout,
    int? out_of_sync_threshold,
    int? sending_endpoint_count,
    int? latency_detection_interval,
    int? max_latency,
    int? query_timeout,
    NetworkQueriesProtocol? queries_protocol,
    int? first_remp_status_timeout,
    int? next_remp_status_timeout,
    int? signature_id,
    String? access_key,
  }) {
    _server_address = server_address;
    _endpoints = endpoints;
    _network_retries_count = network_retries_count;
    _max_reconnect_timeout = max_reconnect_timeout;
    _reconnect_timeout = reconnect_timeout;
    _message_retries_count = message_retries_count;
    _message_processing_timeout = message_processing_timeout;
    _wait_for_timeout = wait_for_timeout;
    _out_of_sync_threshold = out_of_sync_threshold;
    _sending_endpoint_count = sending_endpoint_count;
    _latency_detection_interval = latency_detection_interval;
    _max_latency = max_latency;
    _query_timeout = query_timeout;
    _queries_protocol = queries_protocol;
    _first_remp_status_timeout = first_remp_status_timeout;
    _next_remp_status_timeout = next_remp_status_timeout;
    _signature_id = signature_id;
    _access_key = access_key;
  }
  NetworkConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('server_address') && (map['server_address'] != null)) {
      _server_address = map['server_address'];
    }
    if (map.containsKey('endpoints') && (map['endpoints'] != null)) {
      _endpoints = [];
      for (var el in map['endpoints']) {
        if (el != null) {
          _endpoints?.add(el);
        } else {}
      }
    }
    if (map.containsKey('network_retries_count') &&
        (map['network_retries_count'] != null)) {
      _network_retries_count = map['network_retries_count'];
    }
    if (map.containsKey('max_reconnect_timeout') &&
        (map['max_reconnect_timeout'] != null)) {
      _max_reconnect_timeout = map['max_reconnect_timeout'];
    }
    if (map.containsKey('reconnect_timeout') &&
        (map['reconnect_timeout'] != null)) {
      _reconnect_timeout = map['reconnect_timeout'];
    }
    if (map.containsKey('message_retries_count') &&
        (map['message_retries_count'] != null)) {
      _message_retries_count = map['message_retries_count'];
    }
    if (map.containsKey('message_processing_timeout') &&
        (map['message_processing_timeout'] != null)) {
      _message_processing_timeout = map['message_processing_timeout'];
    }
    if (map.containsKey('wait_for_timeout') &&
        (map['wait_for_timeout'] != null)) {
      _wait_for_timeout = map['wait_for_timeout'];
    }
    if (map.containsKey('out_of_sync_threshold') &&
        (map['out_of_sync_threshold'] != null)) {
      _out_of_sync_threshold = map['out_of_sync_threshold'];
    }
    if (map.containsKey('sending_endpoint_count') &&
        (map['sending_endpoint_count'] != null)) {
      _sending_endpoint_count = map['sending_endpoint_count'];
    }
    if (map.containsKey('latency_detection_interval') &&
        (map['latency_detection_interval'] != null)) {
      _latency_detection_interval = map['latency_detection_interval'];
    }
    if (map.containsKey('max_latency') && (map['max_latency'] != null)) {
      _max_latency = map['max_latency'];
    }
    if (map.containsKey('query_timeout') && (map['query_timeout'] != null)) {
      _query_timeout = map['query_timeout'];
    }
    if (map.containsKey('queries_protocol') &&
        (map['queries_protocol'] != null)) {
      _queries_protocol =
          NetworkQueriesProtocol.fromMap(map['queries_protocol']);
    }
    if (map.containsKey('first_remp_status_timeout') &&
        (map['first_remp_status_timeout'] != null)) {
      _first_remp_status_timeout = map['first_remp_status_timeout'];
    }
    if (map.containsKey('next_remp_status_timeout') &&
        (map['next_remp_status_timeout'] != null)) {
      _next_remp_status_timeout = map['next_remp_status_timeout'];
    }
    if (map.containsKey('signature_id') && (map['signature_id'] != null)) {
      _signature_id = map['signature_id'];
    }
    if (map.containsKey('access_key') && (map['access_key'] != null)) {
      _access_key = map['access_key'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_server_address != null) {
      map['server_address'] = _server_address;
    }
    if (_endpoints != null) {
      map['endpoints'] = _endpoints;
    }
    if (_network_retries_count != null) {
      map['network_retries_count'] = _network_retries_count;
    }
    if (_max_reconnect_timeout != null) {
      map['max_reconnect_timeout'] = _max_reconnect_timeout;
    }
    if (_reconnect_timeout != null) {
      map['reconnect_timeout'] = _reconnect_timeout;
    }
    if (_message_retries_count != null) {
      map['message_retries_count'] = _message_retries_count;
    }
    if (_message_processing_timeout != null) {
      map['message_processing_timeout'] = _message_processing_timeout;
    }
    if (_wait_for_timeout != null) {
      map['wait_for_timeout'] = _wait_for_timeout;
    }
    if (_out_of_sync_threshold != null) {
      map['out_of_sync_threshold'] = _out_of_sync_threshold;
    }
    if (_sending_endpoint_count != null) {
      map['sending_endpoint_count'] = _sending_endpoint_count;
    }
    if (_latency_detection_interval != null) {
      map['latency_detection_interval'] = _latency_detection_interval;
    }
    if (_max_latency != null) {
      map['max_latency'] = _max_latency;
    }
    if (_query_timeout != null) {
      map['query_timeout'] = _query_timeout;
    }
    if (_queries_protocol != null) {
      map['queries_protocol'] = _queries_protocol;
    }
    if (_first_remp_status_timeout != null) {
      map['first_remp_status_timeout'] = _first_remp_status_timeout;
    }
    if (_next_remp_status_timeout != null) {
      map['next_remp_status_timeout'] = _next_remp_status_timeout;
    }
    if (_signature_id != null) {
      map['signature_id'] = _signature_id;
    }
    if (_access_key != null) {
      map['access_key'] = _access_key;
    }
    return map;
  }
}

class BindingConfig extends TonSdkStructure {
  String? _library;
  String? get library => _library;
  String? _version;
  String? get version => _version;
  BindingConfig({
    String? library,
    String? version,
  }) {
    _library = library;
    _version = version;
  }
  BindingConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('library') && (map['library'] != null)) {
      _library = map['library'];
    }
    if (map.containsKey('version') && (map['version'] != null)) {
      _version = map['version'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_library != null) {
      map['library'] = _library;
    }
    if (_version != null) {
      map['version'] = _version;
    }
    return map;
  }
}

///Network protocol used to perform GraphQL queries.
class NetworkQueriesProtocol {
  late String _value;
  String get value => _value;

  ///Each GraphQL query uses separate HTTP request.
  NetworkQueriesProtocol.HTTP() {
    _value = 'HTTP';
  }

  ///All GraphQL queries will be served using single web socket connection. SDK is tested to reliably handle 5000 parallel network requests (sending and processing messages, quering and awaiting blockchain data)
  NetworkQueriesProtocol.WS() {
    _value = 'WS';
  }
  @override
  String toString() {
    return '"$_value"';
  }

  NetworkQueriesProtocol.fromMap(str) {
    _value = str;
  }
}

///Crypto config.
class CryptoConfig extends TonSdkStructure {
  ///Mnemonic dictionary that will be used by default in crypto functions. If not specified, `English` dictionary will be used.
  MnemonicDictionary? _mnemonic_dictionary;
  MnemonicDictionary? get mnemonic_dictionary => _mnemonic_dictionary;

  ///Mnemonic word count that will be used by default in crypto functions. If not specified the default value will be 12.
  int? _mnemonic_word_count;
  int? get mnemonic_word_count => _mnemonic_word_count;

  ///Derivation path that will be used by default in crypto functions. If not specified `m/44'/396'/0'/0/0` will be used.
  String? _hdkey_derivation_path;
  String? get hdkey_derivation_path => _hdkey_derivation_path;
  CryptoConfig({
    MnemonicDictionary? mnemonic_dictionary,
    int? mnemonic_word_count,
    String? hdkey_derivation_path,
  }) {
    _mnemonic_dictionary = mnemonic_dictionary;
    _mnemonic_word_count = mnemonic_word_count;
    _hdkey_derivation_path = hdkey_derivation_path;
  }
  CryptoConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('mnemonic_dictionary') &&
        (map['mnemonic_dictionary'] != null)) {
      _mnemonic_dictionary =
          MnemonicDictionary.fromMap(map['mnemonic_dictionary']);
    }
    if (map.containsKey('mnemonic_word_count') &&
        (map['mnemonic_word_count'] != null)) {
      _mnemonic_word_count = map['mnemonic_word_count'];
    }
    if (map.containsKey('hdkey_derivation_path') &&
        (map['hdkey_derivation_path'] != null)) {
      _hdkey_derivation_path = map['hdkey_derivation_path'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_mnemonic_dictionary != null) {
      map['mnemonic_dictionary'] = _mnemonic_dictionary;
    }
    if (_mnemonic_word_count != null) {
      map['mnemonic_word_count'] = _mnemonic_word_count;
    }
    if (_hdkey_derivation_path != null) {
      map['hdkey_derivation_path'] = _hdkey_derivation_path;
    }
    return map;
  }
}

class AbiConfig extends TonSdkStructure {
  ///Workchain id that is used by default in DeploySet
  int? _workchain;
  int? get workchain => _workchain;

  ///Must be specified in milliseconds. Default is 40000 (40 sec).
  int? _message_expiration_timeout;
  int? get message_expiration_timeout => _message_expiration_timeout;

  ///Default is 1.5
  int? _message_expiration_timeout_grow_factor;
  int? get message_expiration_timeout_grow_factor =>
      _message_expiration_timeout_grow_factor;
  AbiConfig({
    int? workchain,
    int? message_expiration_timeout,
    int? message_expiration_timeout_grow_factor,
  }) {
    _workchain = workchain;
    _message_expiration_timeout = message_expiration_timeout;
    _message_expiration_timeout_grow_factor =
        message_expiration_timeout_grow_factor;
  }
  AbiConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('workchain') && (map['workchain'] != null)) {
      _workchain = map['workchain'];
    }
    if (map.containsKey('message_expiration_timeout') &&
        (map['message_expiration_timeout'] != null)) {
      _message_expiration_timeout = map['message_expiration_timeout'];
    }
    if (map.containsKey('message_expiration_timeout_grow_factor') &&
        (map['message_expiration_timeout_grow_factor'] != null)) {
      _message_expiration_timeout_grow_factor =
          map['message_expiration_timeout_grow_factor'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_workchain != null) {
      map['workchain'] = _workchain;
    }
    if (_message_expiration_timeout != null) {
      map['message_expiration_timeout'] = _message_expiration_timeout;
    }
    if (_message_expiration_timeout_grow_factor != null) {
      map['message_expiration_timeout_grow_factor'] =
          _message_expiration_timeout_grow_factor;
    }
    return map;
  }
}

class BocConfig extends TonSdkStructure {
  ///Default is 10 MB
  int? _cache_max_size;
  int? get cache_max_size => _cache_max_size;
  BocConfig({
    int? cache_max_size,
  }) {
    _cache_max_size = cache_max_size;
  }
  BocConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('cache_max_size') && (map['cache_max_size'] != null)) {
      _cache_max_size = map['cache_max_size'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_cache_max_size != null) {
      map['cache_max_size'] = _cache_max_size;
    }
    return map;
  }
}

class ProofsConfig extends TonSdkStructure {
  ///Default is `true`. If this value is set to `true`, downloaded proofs and master-chain BOCs are saved into the
  ///persistent local storage (e.g. file system for native environments or browser's IndexedDB
  ///for the web); otherwise all the data is cached only in memory in current client's context
  ///and will be lost after destruction of the client.
  bool? _cache_in_local_storage;
  bool? get cache_in_local_storage => _cache_in_local_storage;
  ProofsConfig({
    bool? cache_in_local_storage,
  }) {
    _cache_in_local_storage = cache_in_local_storage;
  }
  ProofsConfig.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('cache_in_local_storage') &&
        (map['cache_in_local_storage'] != null)) {
      _cache_in_local_storage = map['cache_in_local_storage'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_cache_in_local_storage != null) {
      map['cache_in_local_storage'] = _cache_in_local_storage;
    }
    return map;
  }
}

class BuildInfoDependency extends TonSdkStructure {
  ///Usually it is a crate name.
  String? _name;
  String? get name => _name;

  ///Git commit hash of the related repository.
  String? _git_commit;
  String? get git_commit => _git_commit;
  BuildInfoDependency({
    required String name,
    required String git_commit,
  }) {
    _name = ArgumentError.checkNotNull(name, 'BuildInfoDependency name');
    _git_commit = ArgumentError.checkNotNull(
        git_commit, 'BuildInfoDependency git_commit');
  }
  BuildInfoDependency.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('git_commit') && (map['git_commit'] != null)) {
      _git_commit = map['git_commit'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_name != null) {
      map['name'] = _name;
    }
    if (_git_commit != null) {
      map['git_commit'] = _git_commit;
    }
    return map;
  }
}

class ParamsOfAppRequest extends TonSdkStructure {
  ///Should be used in `resolve_app_request` call
  int? _app_request_id;
  int? get app_request_id => _app_request_id;

  ///Request describing data
  dynamic? _request_data;
  dynamic? get request_data => _request_data;
  ParamsOfAppRequest({
    required int app_request_id,
    required dynamic request_data,
  }) {
    _app_request_id = ArgumentError.checkNotNull(
        app_request_id, 'ParamsOfAppRequest app_request_id');
    _request_data = ArgumentError.checkNotNull(
        request_data, 'ParamsOfAppRequest request_data');
  }
  ParamsOfAppRequest.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('app_request_id') && (map['app_request_id'] != null)) {
      _app_request_id = map['app_request_id'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('request_data') && (map['request_data'] != null)) {
      _request_data = map['request_data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_app_request_id != null) {
      map['app_request_id'] = _app_request_id;
    }
    if (_request_data != null) {
      map['request_data'] = _request_data;
    }
    return map;
  }
}

abstract class AppRequestResult extends TonSdkStructure {
  static AppRequestResult fromMap(Map<String, dynamic> map) {
    if (map['type'] == 'Error') {
      return AppRequestResult_Error.fromMap(map);
    }
    if (map['type'] == 'Ok') {
      return AppRequestResult_Ok.fromMap(map);
    }
    throw ('AppRequestResult unknown from map type');
  }
}

///Error occurred during request processing
class AppRequestResult_Error extends AppRequestResult {
  late String? _type;
  String? get type => _type;

  ///Error description
  String? _text;
  String? get text => _text;
  AppRequestResult_Error({
    required String text,
  }) {
    _type = 'Error';
    _text = ArgumentError.checkNotNull(text, 'AppRequestResult_Error text');
  }
  AppRequestResult_Error.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Error') {
      throw ('Wrong map data');
    } else {
      _type = 'Error';
    }
    if (map.containsKey('text') && (map['text'] != null)) {
      _text = map['text'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_text != null) {
      map['text'] = _text;
    }
    map['type'] = _type;
    return map;
  }
}

///Request processed successfully
class AppRequestResult_Ok extends AppRequestResult {
  late String? _type;
  String? get type => _type;

  ///Request processing result
  dynamic? _result;
  dynamic? get result => _result;
  AppRequestResult_Ok({
    required dynamic result,
  }) {
    _type = 'Ok';
    _result = ArgumentError.checkNotNull(result, 'AppRequestResult_Ok result');
  }
  AppRequestResult_Ok.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Ok') {
      throw ('Wrong map data');
    } else {
      _type = 'Ok';
    }
    if (map.containsKey('result') && (map['result'] != null)) {
      _result = map['result'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_result != null) {
      map['result'] = _result;
    }
    map['type'] = _type;
    return map;
  }
}

class ResultOfGetApiReference extends TonSdkStructure {
  dynamic? _api;
  dynamic? get api => _api;
  ResultOfGetApiReference({
    required dynamic api,
  }) {
    _api = ArgumentError.checkNotNull(api, 'ResultOfGetApiReference api');
  }
  ResultOfGetApiReference.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('api') && (map['api'] != null)) {
      _api = map['api'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_api != null) {
      map['api'] = _api;
    }
    return map;
  }
}

class ResultOfVersion extends TonSdkStructure {
  ///Core Library version
  String? _version;
  String? get version => _version;
  ResultOfVersion({
    required String version,
  }) {
    _version = ArgumentError.checkNotNull(version, 'ResultOfVersion version');
  }
  ResultOfVersion.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('version') && (map['version'] != null)) {
      _version = map['version'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_version != null) {
      map['version'] = _version;
    }
    return map;
  }
}

class ResultOfBuildInfo extends TonSdkStructure {
  ///Build number assigned to this build by the CI.
  int? _build_number;
  int? get build_number => _build_number;

  ///Fingerprint of the most important dependencies.
  List<BuildInfoDependency>? _dependencies;
  List<BuildInfoDependency>? get dependencies => _dependencies;
  ResultOfBuildInfo({
    required int build_number,
    required List<BuildInfoDependency> dependencies,
  }) {
    _build_number = ArgumentError.checkNotNull(
        build_number, 'ResultOfBuildInfo build_number');
    _dependencies = ArgumentError.checkNotNull(
        dependencies, 'ResultOfBuildInfo dependencies');
  }
  ResultOfBuildInfo.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('build_number') && (map['build_number'] != null)) {
      _build_number = map['build_number'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('dependencies') && (map['dependencies'] != null)) {
      _dependencies = [];
      for (var el in map['dependencies']) {
        if (el != null) {
          _dependencies?.add(BuildInfoDependency.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_build_number != null) {
      map['build_number'] = _build_number;
    }
    if (_dependencies != null) {
      map['dependencies'] = _dependencies;
    }
    return map;
  }
}

class ParamsOfResolveAppRequest extends TonSdkStructure {
  ///Request ID received from SDK
  int? _app_request_id;
  int? get app_request_id => _app_request_id;

  ///Result of request processing
  AppRequestResult? _result;
  AppRequestResult? get result => _result;
  ParamsOfResolveAppRequest({
    required int app_request_id,
    required AppRequestResult result,
  }) {
    _app_request_id = ArgumentError.checkNotNull(
        app_request_id, 'ParamsOfResolveAppRequest app_request_id');
    _result =
        ArgumentError.checkNotNull(result, 'ParamsOfResolveAppRequest result');
  }
  ParamsOfResolveAppRequest.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('app_request_id') && (map['app_request_id'] != null)) {
      _app_request_id = map['app_request_id'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('result') && (map['result'] != null)) {
      _result = AppRequestResult.fromMap(map['result']);
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_app_request_id != null) {
      map['app_request_id'] = _app_request_id;
    }
    if (_result != null) {
      map['result'] = _result;
    }
    return map;
  }
}
