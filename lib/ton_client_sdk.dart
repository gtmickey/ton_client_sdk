export 'api/ton.dart';
export 'api/simple.dart';
export 'generate/tonsdktypes.dart';
export 'generate/tonclient.dart';
import 'package:ton_client_sdk/frb_generated.dart';

import 'ton_client_sdk_platform_interface.dart';

class TonClientSdk {
  static bool _libInit = false;
  Future<String?> getPlatformVersion() {
    return TonClientSdkPlatform.instance.getPlatformVersion();
  }

  static Future<void> initTonClientSdk() async {
    if (!_libInit) {
      try {
        await RustLib.init();
        _libInit = true;
      } catch (e) {
        _libInit = false;
        rethrow;
      }
    }
  }

  static void deposeAleo() {
    RustLib.dispose();
    _libInit = false;
  }
}
