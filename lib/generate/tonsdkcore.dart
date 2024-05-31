
import 'package:ton_client_sdk/api/ton.dart';
import 'dart:convert';
import 'dart:async';

///Core class
class TonSdkCore {
  int _context = -1;

  Future<void> connect(Map<String, dynamic> config) async {
    final result = await tonCreateContext(config: jsonEncode(config));
    _context = jsonDecode(result)['result'];
  }

  void disconnect() {
    // _context = -1;
  }

  Future<Map<String, dynamic>> request(String fnName, String? fnParams) async {
    final result = await tonRequest(
        context: _context,
        functionName: fnName,
        functionParamsJson: fnParams ?? '');

    return jsonDecode(result);
  }
}
