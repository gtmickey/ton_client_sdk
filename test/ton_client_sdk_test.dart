import 'package:flutter_test/flutter_test.dart';
import 'package:ton_client_sdk/ton_client_sdk.dart';
import 'package:ton_client_sdk/ton_client_sdk_platform_interface.dart';
import 'package:ton_client_sdk/ton_client_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTonClientSdkPlatform
    with MockPlatformInterfaceMixin
    implements TonClientSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TonClientSdkPlatform initialPlatform = TonClientSdkPlatform.instance;

  test('$MethodChannelTonClientSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTonClientSdk>());
  });

  test('getPlatformVersion', () async {
    TonClientSdk tonClientSdkPlugin = TonClientSdk();
    MockTonClientSdkPlatform fakePlatform = MockTonClientSdkPlatform();
    TonClientSdkPlatform.instance = fakePlatform;

    expect(await tonClientSdkPlugin.getPlatformVersion(), '42');
  });
}
