import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ton_client_sdk_platform_interface.dart';

/// An implementation of [TonClientSdkPlatform] that uses method channels.
class MethodChannelTonClientSdk extends TonClientSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ton_client_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
