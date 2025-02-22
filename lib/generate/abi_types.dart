part of 'tonsdktypes.dart';

class AbiErrorCode {
  late String _value;
  String get value => _value;
  AbiErrorCode.RequiredAddressMissingForEncodeMessage() {
    _value = 'RequiredAddressMissingForEncodeMessage';
  }
  AbiErrorCode.RequiredCallSetMissingForEncodeMessage() {
    _value = 'RequiredCallSetMissingForEncodeMessage';
  }
  AbiErrorCode.InvalidJson() {
    _value = 'InvalidJson';
  }
  AbiErrorCode.InvalidMessage() {
    _value = 'InvalidMessage';
  }
  AbiErrorCode.EncodeDeployMessageFailed() {
    _value = 'EncodeDeployMessageFailed';
  }
  AbiErrorCode.EncodeRunMessageFailed() {
    _value = 'EncodeRunMessageFailed';
  }
  AbiErrorCode.AttachSignatureFailed() {
    _value = 'AttachSignatureFailed';
  }
  AbiErrorCode.InvalidTvcImage() {
    _value = 'InvalidTvcImage';
  }
  AbiErrorCode.RequiredPublicKeyMissingForFunctionHeader() {
    _value = 'RequiredPublicKeyMissingForFunctionHeader';
  }
  AbiErrorCode.InvalidSigner() {
    _value = 'InvalidSigner';
  }
  AbiErrorCode.InvalidAbi() {
    _value = 'InvalidAbi';
  }
  AbiErrorCode.InvalidFunctionId() {
    _value = 'InvalidFunctionId';
  }
  AbiErrorCode.InvalidData() {
    _value = 'InvalidData';
  }
  AbiErrorCode.EncodeInitialDataFailed() {
    _value = 'EncodeInitialDataFailed';
  }
  AbiErrorCode.InvalidFunctionName() {
    _value = 'InvalidFunctionName';
  }
  AbiErrorCode.PubKeyNotSupported() {
    _value = 'PubKeyNotSupported';
  }
  @override
  String toString() {
    return '"$_value"';
  }

  AbiErrorCode.fromMap(str) {
    _value = str;
  }
}

abstract class Abi extends TonSdkStructure {
  static Abi fromMap(Map<String, dynamic> map) {
    if (map['type'] == 'Contract') {
      return Abi_Contract.fromMap(map);
    }
    if (map['type'] == 'Json') {
      return Abi_Json.fromMap(map);
    }
    if (map['type'] == 'Handle') {
      return Abi_Handle.fromMap(map);
    }
    if (map['type'] == 'Serialized') {
      return Abi_Serialized.fromMap(map);
    }
    throw ('Abi unknown from map type');
  }
}

class Abi_Contract extends Abi {
  late String? _type;
  String? get type => _type;
  AbiContract? _value;
  AbiContract? get value => _value;
  Abi_Contract({
    required AbiContract value,
  }) {
    _type = 'Contract';
    _value = ArgumentError.checkNotNull(value, 'Abi_Contract value');
  }
  Abi_Contract.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Contract') {
      throw ('Wrong map data');
    } else {
      _type = 'Contract';
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = AbiContract.fromMap(map['value']);
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_value != null) {
      map['value'] = _value;
    }
    map['type'] = _type;
    return map;
  }
}

class Abi_Json extends Abi {
  late String? _type;
  String? get type => _type;
  String? _value;
  String? get value => _value;
  Abi_Json({
    required String value,
  }) {
    _type = 'Json';
    _value = ArgumentError.checkNotNull(value, 'Abi_Json value');
  }
  Abi_Json.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Json') {
      throw ('Wrong map data');
    } else {
      _type = 'Json';
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = map['value'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_value != null) {
      map['value'] = _value;
    }
    map['type'] = _type;
    return map;
  }
}

class Abi_Handle extends Abi {
  late String? _type;
  String? get type => _type;
  int? _value;
  int? get value => _value;
  Abi_Handle({
    required int value,
  }) {
    _type = 'Handle';
    _value = ArgumentError.checkNotNull(value, 'Abi_Handle value');
  }
  Abi_Handle.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Handle') {
      throw ('Wrong map data');
    } else {
      _type = 'Handle';
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = map['value'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_value != null) {
      map['value'] = _value;
    }
    map['type'] = _type;
    return map;
  }
}

class Abi_Serialized extends Abi {
  late String? _type;
  String? get type => _type;
  AbiContract? _value;
  AbiContract? get value => _value;
  Abi_Serialized({
    required AbiContract value,
  }) {
    _type = 'Serialized';
    _value = ArgumentError.checkNotNull(value, 'Abi_Serialized value');
  }
  Abi_Serialized.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Serialized') {
      throw ('Wrong map data');
    } else {
      _type = 'Serialized';
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = AbiContract.fromMap(map['value']);
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_value != null) {
      map['value'] = _value;
    }
    map['type'] = _type;
    return map;
  }
}

///Includes several hidden function parameters that contract
///uses for security, message delivery monitoring and replay protection reasons.
///
///The actual set of header fields depends on the contract's ABI.
///If a contract's ABI does not include some headers, then they are not filled.
class FunctionHeader extends TonSdkStructure {
  ///If not specified - calculated automatically from message_expiration_timeout(),
  ///try_index and message_expiration_timeout_grow_factor() (if ABI includes `expire` header).
  int? _expire;
  int? get expire => _expire;

  ///If not specified, `now` is used (if ABI includes `time` header).
  BigInt? _time;
  BigInt? get time => _time;

  ///Encoded in `hex`. If not specified, method fails with exception (if ABI includes `pubkey` header)..
  String? _pubkey;
  String? get pubkey => _pubkey;
  FunctionHeader({
    int? expire,
    BigInt? time,
    String? pubkey,
  }) {
    _expire = expire;
    _time = time;
    _pubkey = pubkey;
  }
  FunctionHeader.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('expire') && (map['expire'] != null)) {
      _expire = map['expire'];
    }
    if (map.containsKey('time') && (map['time'] != null)) {
      _time = BigInt.from(map['time']);
    }
    if (map.containsKey('pubkey') && (map['pubkey'] != null)) {
      _pubkey = map['pubkey'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_expire != null) {
      map['expire'] = _expire;
    }
    if (_time != null) {
      map['time'] = _time;
    }
    if (_pubkey != null) {
      map['pubkey'] = _pubkey;
    }
    return map;
  }
}

class CallSet extends TonSdkStructure {
  ///Function name that is being called. Or function id encoded as string in hex (starting with 0x).
  String? _function_name;
  String? get function_name => _function_name;

  ///If an application omits some header parameters required by the
  ///contract's ABI, the library will set the default values for
  ///them.
  FunctionHeader? _header;
  FunctionHeader? get header => _header;

  ///Function input parameters according to ABI.
  dynamic? _input;
  dynamic? get input => _input;
  CallSet({
    required String function_name,
    FunctionHeader? header,
    dynamic? input,
  }) {
    _function_name =
        ArgumentError.checkNotNull(function_name, 'CallSet function_name');
    _header = header;
    _input = input;
  }
  CallSet.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('function_name') && (map['function_name'] != null)) {
      _function_name = map['function_name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('header') && (map['header'] != null)) {
      _header = FunctionHeader.fromMap(map['header']);
    }
    if (map.containsKey('input') && (map['input'] != null)) {
      _input = map['input'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_function_name != null) {
      map['function_name'] = _function_name;
    }
    if (_header != null) {
      map['header'] = _header;
    }
    if (_input != null) {
      map['input'] = _input;
    }
    return map;
  }
}

class DeploySet extends TonSdkStructure {
  ///Content of TVC file encoded in `base64`. For compatibility reason this field can contain an encoded  `StateInit`.
  String? _tvc;
  String? get tvc => _tvc;

  ///Contract code BOC encoded with base64.
  String? _code;
  String? get code => _code;

  ///State init BOC encoded with base64.
  String? _state_init;
  String? get state_init => _state_init;

  ///Default is `0`.
  int? _workchain_id;
  int? get workchain_id => _workchain_id;

  ///List of initial values for contract's public variables.
  dynamic? _initial_data;
  dynamic? get initial_data => _initial_data;

  ///Public key resolving priority:
  ///1. Public key from deploy set.
  ///2. Public key, specified in TVM file.
  ///3. Public key, provided by Signer.
  ///
  ///Applicable only for contracts with abi_spaced_version < 2.4. Contract initial public key should be
  ///explicitly provided inside `initial_data` since ABI 2.4
  String? _initial_pubkey;
  String? get initial_pubkey => _initial_pubkey;
  DeploySet({
    String? tvc,
    String? code,
    String? state_init,
    int? workchain_id,
    dynamic? initial_data,
    String? initial_pubkey,
  }) {
    _tvc = tvc;
    _code = code;
    _state_init = state_init;
    _workchain_id = workchain_id;
    _initial_data = initial_data;
    _initial_pubkey = initial_pubkey;
  }
  DeploySet.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('tvc') && (map['tvc'] != null)) {
      _tvc = map['tvc'];
    }
    if (map.containsKey('code') && (map['code'] != null)) {
      _code = map['code'];
    }
    if (map.containsKey('state_init') && (map['state_init'] != null)) {
      _state_init = map['state_init'];
    }
    if (map.containsKey('workchain_id') && (map['workchain_id'] != null)) {
      _workchain_id = map['workchain_id'];
    }
    if (map.containsKey('initial_data') && (map['initial_data'] != null)) {
      _initial_data = map['initial_data'];
    }
    if (map.containsKey('initial_pubkey') && (map['initial_pubkey'] != null)) {
      _initial_pubkey = map['initial_pubkey'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_tvc != null) {
      map['tvc'] = _tvc;
    }
    if (_code != null) {
      map['code'] = _code;
    }
    if (_state_init != null) {
      map['state_init'] = _state_init;
    }
    if (_workchain_id != null) {
      map['workchain_id'] = _workchain_id;
    }
    if (_initial_data != null) {
      map['initial_data'] = _initial_data;
    }
    if (_initial_pubkey != null) {
      map['initial_pubkey'] = _initial_pubkey;
    }
    return map;
  }
}

abstract class Signer extends TonSdkStructure {
  static Signer fromMap(Map<String, dynamic> map) {
    if (map['type'] == 'None') {
      return Signer_None.fromMap(map);
    }
    if (map['type'] == 'External') {
      return Signer_External.fromMap(map);
    }
    if (map['type'] == 'Keys') {
      return Signer_Keys.fromMap(map);
    }
    if (map['type'] == 'SigningBox') {
      return Signer_SigningBox.fromMap(map);
    }
    throw ('Signer unknown from map type');
  }
}

///Creates an unsigned message.
class Signer_None extends Signer {
  late String? _type;
  String? get type => _type;
  Signer_None() {
    _type = 'None';
  }
  Signer_None.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'None') {
      throw ('Wrong map data');
    } else {
      _type = 'None';
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    map['type'] = _type;
    return map;
  }
}

///Only public key is provided in unprefixed hex string format to generate unsigned message and `data_to_sign` which can be signed later.
class Signer_External extends Signer {
  late String? _type;
  String? get type => _type;
  String? _public_key;
  String? get public_key => _public_key;
  Signer_External({
    required String public_key,
  }) {
    _type = 'External';
    _public_key =
        ArgumentError.checkNotNull(public_key, 'Signer_External public_key');
  }
  Signer_External.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'External') {
      throw ('Wrong map data');
    } else {
      _type = 'External';
    }
    if (map.containsKey('public_key') && (map['public_key'] != null)) {
      _public_key = map['public_key'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_public_key != null) {
      map['public_key'] = _public_key;
    }
    map['type'] = _type;
    return map;
  }
}

///Key pair is provided for signing
class Signer_Keys extends Signer {
  late String? _type;
  String? get type => _type;
  KeyPair? _keys;
  KeyPair? get keys => _keys;
  Signer_Keys({
    required KeyPair keys,
  }) {
    _type = 'Keys';
    _keys = ArgumentError.checkNotNull(keys, 'Signer_Keys keys');
  }
  Signer_Keys.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'Keys') {
      throw ('Wrong map data');
    } else {
      _type = 'Keys';
    }
    if (map.containsKey('keys') && (map['keys'] != null)) {
      _keys = KeyPair.fromMap(map['keys']);
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_keys != null) {
      map['keys'] = _keys;
    }
    map['type'] = _type;
    return map;
  }
}

///Signing Box interface is provided for signing, allows Dapps to sign messages using external APIs, such as HSM, cold wallet, etc.
class Signer_SigningBox extends Signer {
  late String? _type;
  String? get type => _type;
  int? _handle;
  int? get handle => _handle;
  Signer_SigningBox({
    required int handle,
  }) {
    _type = 'SigningBox';
    _handle = ArgumentError.checkNotNull(handle, 'Signer_SigningBox handle');
  }
  Signer_SigningBox.fromMap(Map<String, dynamic> map) {
    if (!map.containsKey('type') || map['type'] != 'SigningBox') {
      throw ('Wrong map data');
    } else {
      _type = 'SigningBox';
    }
    if (map.containsKey('handle') && (map['handle'] != null)) {
      _handle = map['handle'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_handle != null) {
      map['handle'] = _handle;
    }
    map['type'] = _type;
    return map;
  }
}

class MessageBodyType {
  late String _value;
  String get value => _value;

  ///Message contains the input of the ABI function.
  MessageBodyType.Input() {
    _value = 'Input';
  }

  ///Message contains the output of the ABI function.
  MessageBodyType.Output() {
    _value = 'Output';
  }

  ///Occurs when contract sends an internal message to other
  ///contract.
  MessageBodyType.InternalOutput() {
    _value = 'InternalOutput';
  }

  ///Message contains the input of the ABI event.
  MessageBodyType.Event() {
    _value = 'Event';
  }
  @override
  String toString() {
    return '"$_value"';
  }

  MessageBodyType.fromMap(str) {
    _value = str;
  }
}

class AbiParam extends TonSdkStructure {
  String? _name;
  String? get name => _name;
  String? _type;
  String? get type => _type;
  List<AbiParam>? _components;
  List<AbiParam>? get components => _components;
  bool? _init;
  bool? get init => _init;
  AbiParam({
    required String name,
    required String type,
    List<AbiParam>? components,
    bool? init,
  }) {
    _name = ArgumentError.checkNotNull(name, 'AbiParam name');
    _type = ArgumentError.checkNotNull(type, 'AbiParam type');
    _components = components;
    _init = init;
  }
  AbiParam.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('type') && (map['type'] != null)) {
      _type = map['type'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('components') && (map['components'] != null)) {
      _components = [];
      for (var el in map['components']) {
        if (el != null) {
          _components?.add(AbiParam.fromMap(el));
        } else {}
      }
    }
    if (map.containsKey('init') && (map['init'] != null)) {
      _init = map['init'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_name != null) {
      map['name'] = _name;
    }
    if (_type != null) {
      map['type'] = _type;
    }
    if (_components != null) {
      map['components'] = _components;
    }
    if (_init != null) {
      map['init'] = _init;
    }
    return map;
  }
}

class AbiEvent extends TonSdkStructure {
  String? _name;
  String? get name => _name;
  List<AbiParam>? _inputs;
  List<AbiParam>? get inputs => _inputs;
  String? _id;
  String? get id => _id;
  AbiEvent({
    required String name,
    required List<AbiParam> inputs,
    String? id,
  }) {
    _name = ArgumentError.checkNotNull(name, 'AbiEvent name');
    _inputs = ArgumentError.checkNotNull(inputs, 'AbiEvent inputs');
    _id = id;
  }
  AbiEvent.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('inputs') && (map['inputs'] != null)) {
      _inputs = [];
      for (var el in map['inputs']) {
        if (el != null) {
          _inputs?.add(AbiParam.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('id') && (map['id'] != null)) {
      _id = map['id'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_name != null) {
      map['name'] = _name;
    }
    if (_inputs != null) {
      map['inputs'] = _inputs;
    }
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}

class AbiData extends TonSdkStructure {
  int? _key;
  int? get key => _key;
  String? _name;
  String? get name => _name;
  String? _type;
  String? get type => _type;
  List<AbiParam>? _components;
  List<AbiParam>? get components => _components;
  AbiData({
    required int key,
    required String name,
    required String type,
    List<AbiParam>? components,
  }) {
    _key = ArgumentError.checkNotNull(key, 'AbiData key');
    _name = ArgumentError.checkNotNull(name, 'AbiData name');
    _type = ArgumentError.checkNotNull(type, 'AbiData type');
    _components = components;
  }
  AbiData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('key') && (map['key'] != null)) {
      _key = map['key'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('type') && (map['type'] != null)) {
      _type = map['type'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('components') && (map['components'] != null)) {
      _components = [];
      for (var el in map['components']) {
        if (el != null) {
          _components?.add(AbiParam.fromMap(el));
        } else {}
      }
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_key != null) {
      map['key'] = _key;
    }
    if (_name != null) {
      map['name'] = _name;
    }
    if (_type != null) {
      map['type'] = _type;
    }
    if (_components != null) {
      map['components'] = _components;
    }
    return map;
  }
}

class AbiFunction extends TonSdkStructure {
  String? _name;
  String? get name => _name;
  List<AbiParam>? _inputs;
  List<AbiParam>? get inputs => _inputs;
  List<AbiParam>? _outputs;
  List<AbiParam>? get outputs => _outputs;
  String? _id;
  String? get id => _id;
  AbiFunction({
    required String name,
    required List<AbiParam> inputs,
    required List<AbiParam> outputs,
    String? id,
  }) {
    _name = ArgumentError.checkNotNull(name, 'AbiFunction name');
    _inputs = ArgumentError.checkNotNull(inputs, 'AbiFunction inputs');
    _outputs = ArgumentError.checkNotNull(outputs, 'AbiFunction outputs');
    _id = id;
  }
  AbiFunction.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('inputs') && (map['inputs'] != null)) {
      _inputs = [];
      for (var el in map['inputs']) {
        if (el != null) {
          _inputs?.add(AbiParam.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('outputs') && (map['outputs'] != null)) {
      _outputs = [];
      for (var el in map['outputs']) {
        if (el != null) {
          _outputs?.add(AbiParam.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('id') && (map['id'] != null)) {
      _id = map['id'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_name != null) {
      map['name'] = _name;
    }
    if (_inputs != null) {
      map['inputs'] = _inputs;
    }
    if (_outputs != null) {
      map['outputs'] = _outputs;
    }
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}

class AbiContract extends TonSdkStructure {
  int? _abi_spaced_version;
  int? get abi_spaced_version => _abi_spaced_version;
  int? _abi_version;
  int? get abi_version => _abi_version;
  String? _version;
  String? get version => _version;
  List<String>? _header;
  List<String>? get header => _header;
  List<AbiFunction>? _functions;
  List<AbiFunction>? get functions => _functions;
  List<AbiEvent>? _events;
  List<AbiEvent>? get events => _events;
  List<AbiData>? _data;
  List<AbiData>? get data => _data;
  List<AbiParam>? _fields;
  List<AbiParam>? get fields => _fields;
  AbiContract({
    int? abi_spaced_version,
    int? abi_version,
    String? version,
    List<String>? header,
    List<AbiFunction>? functions,
    List<AbiEvent>? events,
    List<AbiData>? data,
    List<AbiParam>? fields,
  }) {
    _abi_spaced_version = abi_spaced_version;
    _abi_version = abi_version;
    _version = version;
    _header = header;
    _functions = functions;
    _events = events;
    _data = data;
    _fields = fields;
  }
  AbiContract.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('ABI version') && (map['ABI version'] != null)) {
      _abi_spaced_version = map['ABI version'];
    }
    if (map.containsKey('abi_version') && (map['abi_version'] != null)) {
      _abi_version = map['abi_version'];
    }
    if (map.containsKey('version') && (map['version'] != null)) {
      _version = map['version'];
    }
    if (map.containsKey('header') && (map['header'] != null)) {
      _header = [];
      for (var el in map['header']) {
        if (el != null) {
          _header?.add(el);
        } else {}
      }
    }
    if (map.containsKey('functions') && (map['functions'] != null)) {
      _functions = [];
      for (var el in map['functions']) {
        if (el != null) {
          _functions?.add(AbiFunction.fromMap(el));
        } else {}
      }
    }
    if (map.containsKey('events') && (map['events'] != null)) {
      _events = [];
      for (var el in map['events']) {
        if (el != null) {
          _events?.add(AbiEvent.fromMap(el));
        } else {}
      }
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = [];
      for (var el in map['data']) {
        if (el != null) {
          _data?.add(AbiData.fromMap(el));
        } else {}
      }
    }
    if (map.containsKey('fields') && (map['fields'] != null)) {
      _fields = [];
      for (var el in map['fields']) {
        if (el != null) {
          _fields?.add(AbiParam.fromMap(el));
        } else {}
      }
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi_spaced_version != null) {
      map['ABI version'] = _abi_spaced_version;
    }
    if (_abi_version != null) {
      map['abi_version'] = _abi_version;
    }
    if (_version != null) {
      map['version'] = _version;
    }
    if (_header != null) {
      map['header'] = _header;
    }
    if (_functions != null) {
      map['functions'] = _functions;
    }
    if (_events != null) {
      map['events'] = _events;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    if (_fields != null) {
      map['fields'] = _fields;
    }
    return map;
  }
}

class DataLayout {
  late String _value;
  String get value => _value;

  ///Decode message body as function input parameters.
  DataLayout.Input() {
    _value = 'Input';
  }

  ///Decode message body as function output.
  DataLayout.Output() {
    _value = 'Output';
  }
  @override
  String toString() {
    return '"$_value"';
  }

  DataLayout.fromMap(str) {
    _value = str;
  }
}

class ParamsOfEncodeMessageBody extends TonSdkStructure {
  ///Contract ABI.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Must be specified in non deploy message.
  ///
  ///In case of deploy message contains parameters of constructor.
  CallSet? _call_set;
  CallSet? get call_set => _call_set;

  ///True if internal message body must be encoded.
  bool? _is_internal;
  bool? get is_internal => _is_internal;

  ///Signing parameters.
  Signer? _signer;
  Signer? get signer => _signer;

  ///Used in message processing with retries.
  ///
  ///Encoder uses the provided try index to calculate message
  ///expiration time.
  ///
  ///Expiration timeouts will grow with every retry.
  ///
  ///Default value is 0.
  int? _processing_try_index;
  int? get processing_try_index => _processing_try_index;

  ///Since abi_spaced_version 2.3 destination address of external inbound message is used in message
  ///body signature calculation. Should be provided when signed external inbound message body is
  ///created. Otherwise can be omitted.
  String? _address;
  String? get address => _address;

  ///Signature ID to be used in data to sign preparing when CapSignatureWithId capability is enabled
  int? _signature_id;
  int? get signature_id => _signature_id;
  ParamsOfEncodeMessageBody({
    required Abi abi,
    required CallSet call_set,
    required bool is_internal,
    required Signer signer,
    int? processing_try_index,
    String? address,
    int? signature_id,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfEncodeMessageBody abi');
    _call_set = ArgumentError.checkNotNull(
        call_set, 'ParamsOfEncodeMessageBody call_set');
    _is_internal = ArgumentError.checkNotNull(
        is_internal, 'ParamsOfEncodeMessageBody is_internal');
    _signer =
        ArgumentError.checkNotNull(signer, 'ParamsOfEncodeMessageBody signer');
    _processing_try_index = processing_try_index;
    _address = address;
    _signature_id = signature_id;
  }
  ParamsOfEncodeMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('call_set') && (map['call_set'] != null)) {
      _call_set = CallSet.fromMap(map['call_set']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('is_internal') && (map['is_internal'] != null)) {
      _is_internal = map['is_internal'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('signer') && (map['signer'] != null)) {
      _signer = Signer.fromMap(map['signer']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('processing_try_index') &&
        (map['processing_try_index'] != null)) {
      _processing_try_index = map['processing_try_index'];
    }
    if (map.containsKey('address') && (map['address'] != null)) {
      _address = map['address'];
    }
    if (map.containsKey('signature_id') && (map['signature_id'] != null)) {
      _signature_id = map['signature_id'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_call_set != null) {
      map['call_set'] = _call_set;
    }
    if (_is_internal != null) {
      map['is_internal'] = _is_internal;
    }
    if (_signer != null) {
      map['signer'] = _signer;
    }
    if (_processing_try_index != null) {
      map['processing_try_index'] = _processing_try_index;
    }
    if (_address != null) {
      map['address'] = _address;
    }
    if (_signature_id != null) {
      map['signature_id'] = _signature_id;
    }
    return map;
  }
}

class ResultOfEncodeMessageBody extends TonSdkStructure {
  ///Message body BOC encoded with `base64`.
  String? _body;
  String? get body => _body;

  ///Encoded with `base64`.
  ///Presents when `message` is unsigned. Can be used for external
  ///message signing. Is this case you need to sing this data and
  ///produce signed message using `abi.attach_signature`.
  String? _data_to_sign;
  String? get data_to_sign => _data_to_sign;
  ResultOfEncodeMessageBody({
    required String body,
    String? data_to_sign,
  }) {
    _body = ArgumentError.checkNotNull(body, 'ResultOfEncodeMessageBody body');
    _data_to_sign = data_to_sign;
  }
  ResultOfEncodeMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('body') && (map['body'] != null)) {
      _body = map['body'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data_to_sign') && (map['data_to_sign'] != null)) {
      _data_to_sign = map['data_to_sign'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_body != null) {
      map['body'] = _body;
    }
    if (_data_to_sign != null) {
      map['data_to_sign'] = _data_to_sign;
    }
    return map;
  }
}

class ParamsOfAttachSignatureToMessageBody extends TonSdkStructure {
  ///Contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///Must be encoded with `hex`.
  String? _public_key;
  String? get public_key => _public_key;

  ///Must be encoded with `base64`.
  String? _message;
  String? get message => _message;

  ///Must be encoded with `hex`.
  String? _signature;
  String? get signature => _signature;
  ParamsOfAttachSignatureToMessageBody({
    required Abi abi,
    required String public_key,
    required String message,
    required String signature,
  }) {
    _abi = ArgumentError.checkNotNull(
        abi, 'ParamsOfAttachSignatureToMessageBody abi');
    _public_key = ArgumentError.checkNotNull(
        public_key, 'ParamsOfAttachSignatureToMessageBody public_key');
    _message = ArgumentError.checkNotNull(
        message, 'ParamsOfAttachSignatureToMessageBody message');
    _signature = ArgumentError.checkNotNull(
        signature, 'ParamsOfAttachSignatureToMessageBody signature');
  }
  ParamsOfAttachSignatureToMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('public_key') && (map['public_key'] != null)) {
      _public_key = map['public_key'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('signature') && (map['signature'] != null)) {
      _signature = map['signature'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_public_key != null) {
      map['public_key'] = _public_key;
    }
    if (_message != null) {
      map['message'] = _message;
    }
    if (_signature != null) {
      map['signature'] = _signature;
    }
    return map;
  }
}

class ResultOfAttachSignatureToMessageBody extends TonSdkStructure {
  String? _body;
  String? get body => _body;
  ResultOfAttachSignatureToMessageBody({
    required String body,
  }) {
    _body = ArgumentError.checkNotNull(
        body, 'ResultOfAttachSignatureToMessageBody body');
  }
  ResultOfAttachSignatureToMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('body') && (map['body'] != null)) {
      _body = map['body'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_body != null) {
      map['body'] = _body;
    }
    return map;
  }
}

class ParamsOfEncodeMessage extends TonSdkStructure {
  ///Contract ABI.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Must be specified in case of non-deploy message.
  String? _address;
  String? get address => _address;

  ///Must be specified in case of deploy message.
  DeploySet? _deploy_set;
  DeploySet? get deploy_set => _deploy_set;

  ///Must be specified in case of non-deploy message.
  ///
  ///In case of deploy message it is optional and contains parameters
  ///of the functions that will to be called upon deploy transaction.
  CallSet? _call_set;
  CallSet? get call_set => _call_set;

  ///Signing parameters.
  Signer? _signer;
  Signer? get signer => _signer;

  ///Used in message processing with retries (if contract's ABI includes "expire" header).
  ///
  ///Encoder uses the provided try index to calculate message
  ///expiration time. The 1st message expiration time is specified in
  ///Client config.
  ///
  ///Expiration timeouts will grow with every retry.
  ///Retry grow factor is set in Client config:
  ///<.....add config parameter with default value here>
  ///
  ///Default value is 0.
  int? _processing_try_index;
  int? get processing_try_index => _processing_try_index;

  ///Signature ID to be used in data to sign preparing when CapSignatureWithId capability is enabled
  int? _signature_id;
  int? get signature_id => _signature_id;
  ParamsOfEncodeMessage({
    required Abi abi,
    String? address,
    DeploySet? deploy_set,
    CallSet? call_set,
    required Signer signer,
    int? processing_try_index,
    int? signature_id,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfEncodeMessage abi');
    _address = address;
    _deploy_set = deploy_set;
    _call_set = call_set;
    _signer =
        ArgumentError.checkNotNull(signer, 'ParamsOfEncodeMessage signer');
    _processing_try_index = processing_try_index;
    _signature_id = signature_id;
  }
  ParamsOfEncodeMessage.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('address') && (map['address'] != null)) {
      _address = map['address'];
    }
    if (map.containsKey('deploy_set') && (map['deploy_set'] != null)) {
      _deploy_set = DeploySet.fromMap(map['deploy_set']);
    }
    if (map.containsKey('call_set') && (map['call_set'] != null)) {
      _call_set = CallSet.fromMap(map['call_set']);
    }
    if (map.containsKey('signer') && (map['signer'] != null)) {
      _signer = Signer.fromMap(map['signer']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('processing_try_index') &&
        (map['processing_try_index'] != null)) {
      _processing_try_index = map['processing_try_index'];
    }
    if (map.containsKey('signature_id') && (map['signature_id'] != null)) {
      _signature_id = map['signature_id'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_address != null) {
      map['address'] = _address;
    }
    if (_deploy_set != null) {
      map['deploy_set'] = _deploy_set;
    }
    if (_call_set != null) {
      map['call_set'] = _call_set;
    }
    if (_signer != null) {
      map['signer'] = _signer;
    }
    if (_processing_try_index != null) {
      map['processing_try_index'] = _processing_try_index;
    }
    if (_signature_id != null) {
      map['signature_id'] = _signature_id;
    }
    return map;
  }
}

class ResultOfEncodeMessage extends TonSdkStructure {
  ///Message BOC encoded with `base64`.
  String? _message;
  String? get message => _message;

  ///Returned in case of `Signer::External`. Can be used for external
  ///message signing. Is this case you need to use this data to create signature and
  ///then produce signed message using `abi.attach_signature`.
  String? _data_to_sign;
  String? get data_to_sign => _data_to_sign;

  ///Destination address.
  String? _address;
  String? get address => _address;

  ///Message id.
  String? _message_id;
  String? get message_id => _message_id;
  ResultOfEncodeMessage({
    required String message,
    String? data_to_sign,
    required String address,
    required String message_id,
  }) {
    _message =
        ArgumentError.checkNotNull(message, 'ResultOfEncodeMessage message');
    _data_to_sign = data_to_sign;
    _address =
        ArgumentError.checkNotNull(address, 'ResultOfEncodeMessage address');
    _message_id = ArgumentError.checkNotNull(
        message_id, 'ResultOfEncodeMessage message_id');
  }
  ResultOfEncodeMessage.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data_to_sign') && (map['data_to_sign'] != null)) {
      _data_to_sign = map['data_to_sign'];
    }
    if (map.containsKey('address') && (map['address'] != null)) {
      _address = map['address'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message_id') && (map['message_id'] != null)) {
      _message_id = map['message_id'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_message != null) {
      map['message'] = _message;
    }
    if (_data_to_sign != null) {
      map['data_to_sign'] = _data_to_sign;
    }
    if (_address != null) {
      map['address'] = _address;
    }
    if (_message_id != null) {
      map['message_id'] = _message_id;
    }
    return map;
  }
}

class ParamsOfEncodeInternalMessage extends TonSdkStructure {
  ///Can be None if both deploy_set and call_set are None.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Must be specified in case of non-deploy message.
  String? _address;
  String? get address => _address;

  ///Source address of the message.
  String? _src_address;
  String? get src_address => _src_address;

  ///Must be specified in case of deploy message.
  DeploySet? _deploy_set;
  DeploySet? get deploy_set => _deploy_set;

  ///Must be specified in case of non-deploy message.
  ///
  ///In case of deploy message it is optional and contains parameters
  ///of the functions that will to be called upon deploy transaction.
  CallSet? _call_set;
  CallSet? get call_set => _call_set;

  ///Value in nanotokens to be sent with message.
  String? _value;
  String? get value => _value;

  ///Default is true.
  bool? _bounce;
  bool? get bounce => _bounce;

  ///Default is false.
  bool? _enable_ihr;
  bool? get enable_ihr => _enable_ihr;
  ParamsOfEncodeInternalMessage({
    Abi? abi,
    String? address,
    String? src_address,
    DeploySet? deploy_set,
    CallSet? call_set,
    required String value,
    bool? bounce,
    bool? enable_ihr,
  }) {
    _abi = abi;
    _address = address;
    _src_address = src_address;
    _deploy_set = deploy_set;
    _call_set = call_set;
    _value = ArgumentError.checkNotNull(
        value, 'ParamsOfEncodeInternalMessage value');
    _bounce = bounce;
    _enable_ihr = enable_ihr;
  }
  ParamsOfEncodeInternalMessage.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    }
    if (map.containsKey('address') && (map['address'] != null)) {
      _address = map['address'];
    }
    if (map.containsKey('src_address') && (map['src_address'] != null)) {
      _src_address = map['src_address'];
    }
    if (map.containsKey('deploy_set') && (map['deploy_set'] != null)) {
      _deploy_set = DeploySet.fromMap(map['deploy_set']);
    }
    if (map.containsKey('call_set') && (map['call_set'] != null)) {
      _call_set = CallSet.fromMap(map['call_set']);
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = map['value'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('bounce') && (map['bounce'] != null)) {
      _bounce = map['bounce'];
    }
    if (map.containsKey('enable_ihr') && (map['enable_ihr'] != null)) {
      _enable_ihr = map['enable_ihr'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_address != null) {
      map['address'] = _address;
    }
    if (_src_address != null) {
      map['src_address'] = _src_address;
    }
    if (_deploy_set != null) {
      map['deploy_set'] = _deploy_set;
    }
    if (_call_set != null) {
      map['call_set'] = _call_set;
    }
    if (_value != null) {
      map['value'] = _value;
    }
    if (_bounce != null) {
      map['bounce'] = _bounce;
    }
    if (_enable_ihr != null) {
      map['enable_ihr'] = _enable_ihr;
    }
    return map;
  }
}

class ResultOfEncodeInternalMessage extends TonSdkStructure {
  ///Message BOC encoded with `base64`.
  String? _message;
  String? get message => _message;

  ///Destination address.
  String? _address;
  String? get address => _address;

  ///Message id.
  String? _message_id;
  String? get message_id => _message_id;
  ResultOfEncodeInternalMessage({
    required String message,
    required String address,
    required String message_id,
  }) {
    _message = ArgumentError.checkNotNull(
        message, 'ResultOfEncodeInternalMessage message');
    _address = ArgumentError.checkNotNull(
        address, 'ResultOfEncodeInternalMessage address');
    _message_id = ArgumentError.checkNotNull(
        message_id, 'ResultOfEncodeInternalMessage message_id');
  }
  ResultOfEncodeInternalMessage.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('address') && (map['address'] != null)) {
      _address = map['address'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message_id') && (map['message_id'] != null)) {
      _message_id = map['message_id'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_message != null) {
      map['message'] = _message;
    }
    if (_address != null) {
      map['address'] = _address;
    }
    if (_message_id != null) {
      map['message_id'] = _message_id;
    }
    return map;
  }
}

class ParamsOfAttachSignature extends TonSdkStructure {
  ///Contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///Public key encoded in `hex`.
  String? _public_key;
  String? get public_key => _public_key;

  ///Unsigned message BOC encoded in `base64`.
  String? _message;
  String? get message => _message;

  ///Signature encoded in `hex`.
  String? _signature;
  String? get signature => _signature;
  ParamsOfAttachSignature({
    required Abi abi,
    required String public_key,
    required String message,
    required String signature,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfAttachSignature abi');
    _public_key = ArgumentError.checkNotNull(
        public_key, 'ParamsOfAttachSignature public_key');
    _message =
        ArgumentError.checkNotNull(message, 'ParamsOfAttachSignature message');
    _signature = ArgumentError.checkNotNull(
        signature, 'ParamsOfAttachSignature signature');
  }
  ParamsOfAttachSignature.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('public_key') && (map['public_key'] != null)) {
      _public_key = map['public_key'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('signature') && (map['signature'] != null)) {
      _signature = map['signature'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_public_key != null) {
      map['public_key'] = _public_key;
    }
    if (_message != null) {
      map['message'] = _message;
    }
    if (_signature != null) {
      map['signature'] = _signature;
    }
    return map;
  }
}

class ResultOfAttachSignature extends TonSdkStructure {
  ///Signed message BOC
  String? _message;
  String? get message => _message;

  ///Message ID
  String? _message_id;
  String? get message_id => _message_id;
  ResultOfAttachSignature({
    required String message,
    required String message_id,
  }) {
    _message =
        ArgumentError.checkNotNull(message, 'ResultOfAttachSignature message');
    _message_id = ArgumentError.checkNotNull(
        message_id, 'ResultOfAttachSignature message_id');
  }
  ResultOfAttachSignature.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message_id') && (map['message_id'] != null)) {
      _message_id = map['message_id'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_message != null) {
      map['message'] = _message;
    }
    if (_message_id != null) {
      map['message_id'] = _message_id;
    }
    return map;
  }
}

class ParamsOfDecodeMessage extends TonSdkStructure {
  ///contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///Message BOC
  String? _message;
  String? get message => _message;

  ///Flag allowing partial BOC decoding when ABI doesn't describe the full body BOC. Controls decoder behaviour when after decoding all described in ABI params there are some data left in BOC: `true` - return decoded values `false` - return error of incomplete BOC deserialization (default)
  bool? _allow_partial;
  bool? get allow_partial => _allow_partial;

  ///Function name or function id if is known in advance
  String? _function_name;
  String? get function_name => _function_name;
  DataLayout? _data_layout;
  DataLayout? get data_layout => _data_layout;
  ParamsOfDecodeMessage({
    required Abi abi,
    required String message,
    bool? allow_partial,
    String? function_name,
    DataLayout? data_layout,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfDecodeMessage abi');
    _message =
        ArgumentError.checkNotNull(message, 'ParamsOfDecodeMessage message');
    _allow_partial = allow_partial;
    _function_name = function_name;
    _data_layout = data_layout;
  }
  ParamsOfDecodeMessage.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('allow_partial') && (map['allow_partial'] != null)) {
      _allow_partial = map['allow_partial'];
    }
    if (map.containsKey('function_name') && (map['function_name'] != null)) {
      _function_name = map['function_name'];
    }
    if (map.containsKey('data_layout') && (map['data_layout'] != null)) {
      _data_layout = DataLayout.fromMap(map['data_layout']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_message != null) {
      map['message'] = _message;
    }
    if (_allow_partial != null) {
      map['allow_partial'] = _allow_partial;
    }
    if (_function_name != null) {
      map['function_name'] = _function_name;
    }
    if (_data_layout != null) {
      map['data_layout'] = _data_layout;
    }
    return map;
  }
}

class DecodedMessageBody extends TonSdkStructure {
  ///Type of the message body content.
  MessageBodyType? _body_type;
  MessageBodyType? get body_type => _body_type;

  ///Function or event name.
  String? _name;
  String? get name => _name;

  ///Parameters or result value.
  dynamic? _value;
  dynamic? get value => _value;

  ///Function header.
  FunctionHeader? _header;
  FunctionHeader? get header => _header;
  DecodedMessageBody({
    required MessageBodyType body_type,
    required String name,
    dynamic? value,
    FunctionHeader? header,
  }) {
    _body_type =
        ArgumentError.checkNotNull(body_type, 'DecodedMessageBody body_type');
    _name = ArgumentError.checkNotNull(name, 'DecodedMessageBody name');
    _value = value;
    _header = header;
  }
  DecodedMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('body_type') && (map['body_type'] != null)) {
      _body_type = MessageBodyType.fromMap(map['body_type']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('name') && (map['name'] != null)) {
      _name = map['name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('value') && (map['value'] != null)) {
      _value = map['value'];
    }
    if (map.containsKey('header') && (map['header'] != null)) {
      _header = FunctionHeader.fromMap(map['header']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_body_type != null) {
      map['body_type'] = _body_type;
    }
    if (_name != null) {
      map['name'] = _name;
    }
    if (_value != null) {
      map['value'] = _value;
    }
    if (_header != null) {
      map['header'] = _header;
    }
    return map;
  }
}

class ParamsOfDecodeMessageBody extends TonSdkStructure {
  ///Contract ABI used to decode.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Message body BOC encoded in `base64`.
  String? _body;
  String? get body => _body;

  ///True if the body belongs to the internal message.
  bool? _is_internal;
  bool? get is_internal => _is_internal;

  ///Flag allowing partial BOC decoding when ABI doesn't describe the full body BOC. Controls decoder behaviour when after decoding all described in ABI params there are some data left in BOC: `true` - return decoded values `false` - return error of incomplete BOC deserialization (default)
  bool? _allow_partial;
  bool? get allow_partial => _allow_partial;

  ///Function name or function id if is known in advance
  String? _function_name;
  String? get function_name => _function_name;
  DataLayout? _data_layout;
  DataLayout? get data_layout => _data_layout;
  ParamsOfDecodeMessageBody({
    required Abi abi,
    required String body,
    required bool is_internal,
    bool? allow_partial,
    String? function_name,
    DataLayout? data_layout,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfDecodeMessageBody abi');
    _body = ArgumentError.checkNotNull(body, 'ParamsOfDecodeMessageBody body');
    _is_internal = ArgumentError.checkNotNull(
        is_internal, 'ParamsOfDecodeMessageBody is_internal');
    _allow_partial = allow_partial;
    _function_name = function_name;
    _data_layout = data_layout;
  }
  ParamsOfDecodeMessageBody.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('body') && (map['body'] != null)) {
      _body = map['body'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('is_internal') && (map['is_internal'] != null)) {
      _is_internal = map['is_internal'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('allow_partial') && (map['allow_partial'] != null)) {
      _allow_partial = map['allow_partial'];
    }
    if (map.containsKey('function_name') && (map['function_name'] != null)) {
      _function_name = map['function_name'];
    }
    if (map.containsKey('data_layout') && (map['data_layout'] != null)) {
      _data_layout = DataLayout.fromMap(map['data_layout']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_body != null) {
      map['body'] = _body;
    }
    if (_is_internal != null) {
      map['is_internal'] = _is_internal;
    }
    if (_allow_partial != null) {
      map['allow_partial'] = _allow_partial;
    }
    if (_function_name != null) {
      map['function_name'] = _function_name;
    }
    if (_data_layout != null) {
      map['data_layout'] = _data_layout;
    }
    return map;
  }
}

class ParamsOfEncodeAccount extends TonSdkStructure {
  ///Account state init.
  String? _state_init;
  String? get state_init => _state_init;

  ///Initial balance.
  BigInt? _balance;
  BigInt? get balance => _balance;

  ///Initial value for the `last_trans_lt`.
  BigInt? _last_trans_lt;
  BigInt? get last_trans_lt => _last_trans_lt;

  ///Initial value for the `last_paid`.
  int? _last_paid;
  int? get last_paid => _last_paid;

  ///The BOC itself returned if no cache type provided
  BocCacheType? _boc_cache;
  BocCacheType? get boc_cache => _boc_cache;
  ParamsOfEncodeAccount({
    required String state_init,
    BigInt? balance,
    BigInt? last_trans_lt,
    int? last_paid,
    BocCacheType? boc_cache,
  }) {
    _state_init = ArgumentError.checkNotNull(
        state_init, 'ParamsOfEncodeAccount state_init');
    _balance = balance;
    _last_trans_lt = last_trans_lt;
    _last_paid = last_paid;
    _boc_cache = boc_cache;
  }
  ParamsOfEncodeAccount.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('state_init') && (map['state_init'] != null)) {
      _state_init = map['state_init'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('balance') && (map['balance'] != null)) {
      _balance = BigInt.from(map['balance']);
    }
    if (map.containsKey('last_trans_lt') && (map['last_trans_lt'] != null)) {
      _last_trans_lt = BigInt.from(map['last_trans_lt']);
    }
    if (map.containsKey('last_paid') && (map['last_paid'] != null)) {
      _last_paid = map['last_paid'];
    }
    if (map.containsKey('boc_cache') && (map['boc_cache'] != null)) {
      _boc_cache = BocCacheType.fromMap(map['boc_cache']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_state_init != null) {
      map['state_init'] = _state_init;
    }
    if (_balance != null) {
      map['balance'] = _balance;
    }
    if (_last_trans_lt != null) {
      map['last_trans_lt'] = _last_trans_lt;
    }
    if (_last_paid != null) {
      map['last_paid'] = _last_paid;
    }
    if (_boc_cache != null) {
      map['boc_cache'] = _boc_cache;
    }
    return map;
  }
}

class ResultOfEncodeAccount extends TonSdkStructure {
  ///Account BOC encoded in `base64`.
  String? _account;
  String? get account => _account;

  ///Account ID  encoded in `hex`.
  String? _id;
  String? get id => _id;
  ResultOfEncodeAccount({
    required String account,
    required String id,
  }) {
    _account =
        ArgumentError.checkNotNull(account, 'ResultOfEncodeAccount account');
    _id = ArgumentError.checkNotNull(id, 'ResultOfEncodeAccount id');
  }
  ResultOfEncodeAccount.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('account') && (map['account'] != null)) {
      _account = map['account'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('id') && (map['id'] != null)) {
      _id = map['id'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_account != null) {
      map['account'] = _account;
    }
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }
}

class ParamsOfDecodeAccountData extends TonSdkStructure {
  ///Contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///Data BOC or BOC handle
  String? _data;
  String? get data => _data;

  ///Flag allowing partial BOC decoding when ABI doesn't describe the full body BOC. Controls decoder behaviour when after decoding all described in ABI params there are some data left in BOC: `true` - return decoded values `false` - return error of incomplete BOC deserialization (default)
  bool? _allow_partial;
  bool? get allow_partial => _allow_partial;
  ParamsOfDecodeAccountData({
    required Abi abi,
    required String data,
    bool? allow_partial,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfDecodeAccountData abi');
    _data = ArgumentError.checkNotNull(data, 'ParamsOfDecodeAccountData data');
    _allow_partial = allow_partial;
  }
  ParamsOfDecodeAccountData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('allow_partial') && (map['allow_partial'] != null)) {
      _allow_partial = map['allow_partial'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    if (_allow_partial != null) {
      map['allow_partial'] = _allow_partial;
    }
    return map;
  }
}

class ResultOfDecodeAccountData extends TonSdkStructure {
  ///Decoded data as a JSON structure.
  dynamic? _data;
  dynamic? get data => _data;
  ResultOfDecodeAccountData({
    required dynamic data,
  }) {
    _data = ArgumentError.checkNotNull(data, 'ResultOfDecodeAccountData data');
  }
  ResultOfDecodeAccountData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_data != null) {
      map['data'] = _data;
    }
    return map;
  }
}

class ParamsOfUpdateInitialData extends TonSdkStructure {
  ///Contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///Data BOC or BOC handle
  String? _data;
  String? get data => _data;

  ///`abi` parameter should be provided to set initial data
  dynamic? _initial_data;
  dynamic? get initial_data => _initial_data;

  ///Initial account owner's public key to set into account data
  String? _initial_pubkey;
  String? get initial_pubkey => _initial_pubkey;

  ///Cache type to put the result. The BOC itself returned if no cache type provided.
  BocCacheType? _boc_cache;
  BocCacheType? get boc_cache => _boc_cache;
  ParamsOfUpdateInitialData({
    required Abi abi,
    required String data,
    dynamic? initial_data,
    String? initial_pubkey,
    BocCacheType? boc_cache,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfUpdateInitialData abi');
    _data = ArgumentError.checkNotNull(data, 'ParamsOfUpdateInitialData data');
    _initial_data = initial_data;
    _initial_pubkey = initial_pubkey;
    _boc_cache = boc_cache;
  }
  ParamsOfUpdateInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('initial_data') && (map['initial_data'] != null)) {
      _initial_data = map['initial_data'];
    }
    if (map.containsKey('initial_pubkey') && (map['initial_pubkey'] != null)) {
      _initial_pubkey = map['initial_pubkey'];
    }
    if (map.containsKey('boc_cache') && (map['boc_cache'] != null)) {
      _boc_cache = BocCacheType.fromMap(map['boc_cache']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    if (_initial_data != null) {
      map['initial_data'] = _initial_data;
    }
    if (_initial_pubkey != null) {
      map['initial_pubkey'] = _initial_pubkey;
    }
    if (_boc_cache != null) {
      map['boc_cache'] = _boc_cache;
    }
    return map;
  }
}

class ResultOfUpdateInitialData extends TonSdkStructure {
  ///Updated data BOC or BOC handle
  String? _data;
  String? get data => _data;
  ResultOfUpdateInitialData({
    required String data,
  }) {
    _data = ArgumentError.checkNotNull(data, 'ResultOfUpdateInitialData data');
  }
  ResultOfUpdateInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_data != null) {
      map['data'] = _data;
    }
    return map;
  }
}

class ParamsOfEncodeInitialData extends TonSdkStructure {
  ///Contract ABI
  Abi? _abi;
  Abi? get abi => _abi;

  ///`abi` parameter should be provided to set initial data
  dynamic? _initial_data;
  dynamic? get initial_data => _initial_data;

  ///Initial account owner's public key to set into account data
  String? _initial_pubkey;
  String? get initial_pubkey => _initial_pubkey;

  ///Cache type to put the result. The BOC itself returned if no cache type provided.
  BocCacheType? _boc_cache;
  BocCacheType? get boc_cache => _boc_cache;
  ParamsOfEncodeInitialData({
    required Abi abi,
    dynamic? initial_data,
    String? initial_pubkey,
    BocCacheType? boc_cache,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfEncodeInitialData abi');
    _initial_data = initial_data;
    _initial_pubkey = initial_pubkey;
    _boc_cache = boc_cache;
  }
  ParamsOfEncodeInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('initial_data') && (map['initial_data'] != null)) {
      _initial_data = map['initial_data'];
    }
    if (map.containsKey('initial_pubkey') && (map['initial_pubkey'] != null)) {
      _initial_pubkey = map['initial_pubkey'];
    }
    if (map.containsKey('boc_cache') && (map['boc_cache'] != null)) {
      _boc_cache = BocCacheType.fromMap(map['boc_cache']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_initial_data != null) {
      map['initial_data'] = _initial_data;
    }
    if (_initial_pubkey != null) {
      map['initial_pubkey'] = _initial_pubkey;
    }
    if (_boc_cache != null) {
      map['boc_cache'] = _boc_cache;
    }
    return map;
  }
}

class ResultOfEncodeInitialData extends TonSdkStructure {
  ///Updated data BOC or BOC handle
  String? _data;
  String? get data => _data;
  ResultOfEncodeInitialData({
    required String data,
  }) {
    _data = ArgumentError.checkNotNull(data, 'ResultOfEncodeInitialData data');
  }
  ResultOfEncodeInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_data != null) {
      map['data'] = _data;
    }
    return map;
  }
}

class ParamsOfDecodeInitialData extends TonSdkStructure {
  ///Initial data is decoded if this parameter is provided
  Abi? _abi;
  Abi? get abi => _abi;

  ///Data BOC or BOC handle
  String? _data;
  String? get data => _data;

  ///Flag allowing partial BOC decoding when ABI doesn't describe the full body BOC. Controls decoder behaviour when after decoding all described in ABI params there are some data left in BOC: `true` - return decoded values `false` - return error of incomplete BOC deserialization (default)
  bool? _allow_partial;
  bool? get allow_partial => _allow_partial;
  ParamsOfDecodeInitialData({
    required Abi abi,
    required String data,
    bool? allow_partial,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfDecodeInitialData abi');
    _data = ArgumentError.checkNotNull(data, 'ParamsOfDecodeInitialData data');
    _allow_partial = allow_partial;
  }
  ParamsOfDecodeInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('allow_partial') && (map['allow_partial'] != null)) {
      _allow_partial = map['allow_partial'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    if (_allow_partial != null) {
      map['allow_partial'] = _allow_partial;
    }
    return map;
  }
}

class ResultOfDecodeInitialData extends TonSdkStructure {
  ///Initial data is decoded if `abi` input parameter is provided
  dynamic? _initial_data;
  dynamic? get initial_data => _initial_data;

  ///Initial account owner's public key
  String? _initial_pubkey;
  String? get initial_pubkey => _initial_pubkey;
  ResultOfDecodeInitialData({
    required dynamic initial_data,
    required String initial_pubkey,
  }) {
    _initial_data = ArgumentError.checkNotNull(
        initial_data, 'ResultOfDecodeInitialData initial_data');
    _initial_pubkey = ArgumentError.checkNotNull(
        initial_pubkey, 'ResultOfDecodeInitialData initial_pubkey');
  }
  ResultOfDecodeInitialData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('initial_data') && (map['initial_data'] != null)) {
      _initial_data = map['initial_data'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('initial_pubkey') && (map['initial_pubkey'] != null)) {
      _initial_pubkey = map['initial_pubkey'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_initial_data != null) {
      map['initial_data'] = _initial_data;
    }
    if (_initial_pubkey != null) {
      map['initial_pubkey'] = _initial_pubkey;
    }
    return map;
  }
}

class ParamsOfDecodeBoc extends TonSdkStructure {
  ///Parameters to decode from BOC
  List<AbiParam>? _params;
  List<AbiParam>? get params => _params;

  ///Data BOC or BOC handle
  String? _boc;
  String? get boc => _boc;
  bool? _allow_partial;
  bool? get allow_partial => _allow_partial;
  ParamsOfDecodeBoc({
    required List<AbiParam> params,
    required String boc,
    required bool allow_partial,
  }) {
    _params = ArgumentError.checkNotNull(params, 'ParamsOfDecodeBoc params');
    _boc = ArgumentError.checkNotNull(boc, 'ParamsOfDecodeBoc boc');
    _allow_partial = ArgumentError.checkNotNull(
        allow_partial, 'ParamsOfDecodeBoc allow_partial');
  }
  ParamsOfDecodeBoc.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('params') && (map['params'] != null)) {
      _params = [];
      for (var el in map['params']) {
        if (el != null) {
          _params?.add(AbiParam.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('boc') && (map['boc'] != null)) {
      _boc = map['boc'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('allow_partial') && (map['allow_partial'] != null)) {
      _allow_partial = map['allow_partial'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_params != null) {
      map['params'] = _params;
    }
    if (_boc != null) {
      map['boc'] = _boc;
    }
    if (_allow_partial != null) {
      map['allow_partial'] = _allow_partial;
    }
    return map;
  }
}

class ResultOfDecodeBoc extends TonSdkStructure {
  ///Decoded data as a JSON structure.
  dynamic? _data;
  dynamic? get data => _data;
  ResultOfDecodeBoc({
    required dynamic data,
  }) {
    _data = ArgumentError.checkNotNull(data, 'ResultOfDecodeBoc data');
  }
  ResultOfDecodeBoc.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_data != null) {
      map['data'] = _data;
    }
    return map;
  }
}

class ParamsOfAbiEncodeBoc extends TonSdkStructure {
  ///Parameters to encode into BOC
  List<AbiParam>? _params;
  List<AbiParam>? get params => _params;

  ///Parameters and values as a JSON structure
  dynamic? _data;
  dynamic? get data => _data;

  ///The BOC itself returned if no cache type provided
  BocCacheType? _boc_cache;
  BocCacheType? get boc_cache => _boc_cache;
  ParamsOfAbiEncodeBoc({
    required List<AbiParam> params,
    required dynamic data,
    BocCacheType? boc_cache,
  }) {
    _params = ArgumentError.checkNotNull(params, 'ParamsOfAbiEncodeBoc params');
    _data = ArgumentError.checkNotNull(data, 'ParamsOfAbiEncodeBoc data');
    _boc_cache = boc_cache;
  }
  ParamsOfAbiEncodeBoc.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('params') && (map['params'] != null)) {
      _params = [];
      for (var el in map['params']) {
        if (el != null) {
          _params?.add(AbiParam.fromMap(el));
        } else {}
      }
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('data') && (map['data'] != null)) {
      _data = map['data'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('boc_cache') && (map['boc_cache'] != null)) {
      _boc_cache = BocCacheType.fromMap(map['boc_cache']);
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_params != null) {
      map['params'] = _params;
    }
    if (_data != null) {
      map['data'] = _data;
    }
    if (_boc_cache != null) {
      map['boc_cache'] = _boc_cache;
    }
    return map;
  }
}

class ResultOfAbiEncodeBoc extends TonSdkStructure {
  ///BOC encoded as base64
  String? _boc;
  String? get boc => _boc;
  ResultOfAbiEncodeBoc({
    required String boc,
  }) {
    _boc = ArgumentError.checkNotNull(boc, 'ResultOfAbiEncodeBoc boc');
  }
  ResultOfAbiEncodeBoc.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('boc') && (map['boc'] != null)) {
      _boc = map['boc'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_boc != null) {
      map['boc'] = _boc;
    }
    return map;
  }
}

class ParamsOfCalcFunctionId extends TonSdkStructure {
  ///Contract ABI.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Contract function name
  String? _function_name;
  String? get function_name => _function_name;

  ///If set to `true` output function ID will be returned which is used in contract response. Default is `false`
  bool? _output;
  bool? get output => _output;
  ParamsOfCalcFunctionId({
    required Abi abi,
    required String function_name,
    bool? output,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfCalcFunctionId abi');
    _function_name = ArgumentError.checkNotNull(
        function_name, 'ParamsOfCalcFunctionId function_name');
    _output = output;
  }
  ParamsOfCalcFunctionId.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('function_name') && (map['function_name'] != null)) {
      _function_name = map['function_name'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('output') && (map['output'] != null)) {
      _output = map['output'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_function_name != null) {
      map['function_name'] = _function_name;
    }
    if (_output != null) {
      map['output'] = _output;
    }
    return map;
  }
}

class ResultOfCalcFunctionId extends TonSdkStructure {
  ///Contract function ID
  int? _function_id;
  int? get function_id => _function_id;
  ResultOfCalcFunctionId({
    required int function_id,
  }) {
    _function_id = ArgumentError.checkNotNull(
        function_id, 'ResultOfCalcFunctionId function_id');
  }
  ResultOfCalcFunctionId.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('function_id') && (map['function_id'] != null)) {
      _function_id = map['function_id'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_function_id != null) {
      map['function_id'] = _function_id;
    }
    return map;
  }
}

class ParamsOfGetSignatureData extends TonSdkStructure {
  ///Contract ABI used to decode.
  Abi? _abi;
  Abi? get abi => _abi;

  ///Message BOC encoded in `base64`.
  String? _message;
  String? get message => _message;

  ///Signature ID to be used in unsigned data preparing when CapSignatureWithId capability is enabled
  int? _signature_id;
  int? get signature_id => _signature_id;
  ParamsOfGetSignatureData({
    required Abi abi,
    required String message,
    int? signature_id,
  }) {
    _abi = ArgumentError.checkNotNull(abi, 'ParamsOfGetSignatureData abi');
    _message =
        ArgumentError.checkNotNull(message, 'ParamsOfGetSignatureData message');
    _signature_id = signature_id;
  }
  ParamsOfGetSignatureData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('abi') && (map['abi'] != null)) {
      _abi = Abi.fromMap(map['abi']);
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('message') && (map['message'] != null)) {
      _message = map['message'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('signature_id') && (map['signature_id'] != null)) {
      _signature_id = map['signature_id'];
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_abi != null) {
      map['abi'] = _abi;
    }
    if (_message != null) {
      map['message'] = _message;
    }
    if (_signature_id != null) {
      map['signature_id'] = _signature_id;
    }
    return map;
  }
}

class ResultOfGetSignatureData extends TonSdkStructure {
  ///Signature from the message in `hex`.
  String? _signature;
  String? get signature => _signature;

  ///Data to verify the signature in `base64`.
  String? _unsigned;
  String? get unsigned => _unsigned;
  ResultOfGetSignatureData({
    required String signature,
    required String unsigned,
  }) {
    _signature = ArgumentError.checkNotNull(
        signature, 'ResultOfGetSignatureData signature');
    _unsigned = ArgumentError.checkNotNull(
        unsigned, 'ResultOfGetSignatureData unsigned');
  }
  ResultOfGetSignatureData.fromMap(Map<String, dynamic> map) {
    if (map.containsKey('signature') && (map['signature'] != null)) {
      _signature = map['signature'];
    } else {
      throw ('Wrong map data');
    }
    if (map.containsKey('unsigned') && (map['unsigned'] != null)) {
      _unsigned = map['unsigned'];
    } else {
      throw ('Wrong map data');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    if (_signature != null) {
      map['signature'] = _signature;
    }
    if (_unsigned != null) {
      map['unsigned'] = _unsigned;
    }
    return map;
  }
}
