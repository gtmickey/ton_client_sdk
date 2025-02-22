part of 'tonsdkmodule.dart';

class ClientModule extends _TonSdkModule {
  ClientModule(TonSdkCore core) : super(core);

  ///Returns Core Library API reference
  Future<ResultOfGetApiReference> get_api_reference() async {
    final res = await _tonCore.request('client.get_api_reference', null);
    return ResultOfGetApiReference.fromMap(res);
  }

  ///Returns Core Library version
  Future<ResultOfVersion> version() async {
    final res = await _tonCore.request('client.version', null);
    return ResultOfVersion.fromMap(res);
  }

  ///Returns Core Library API reference
  Future<ClientConfig> config() async {
    final res = await _tonCore.request('client.config', null);
    return ClientConfig.fromMap(res);
  }

  ///Returns detailed information about this build.
  Future<ResultOfBuildInfo> build_info() async {
    final res = await _tonCore.request('client.build_info', null);
    return ResultOfBuildInfo.fromMap(res);
  }

  ///Resolves application request processing result
  Future<void> resolve_app_request(ParamsOfResolveAppRequest params) async {
    await _tonCore.request(
        'client.resolve_app_request', params.toString());
  }
}
