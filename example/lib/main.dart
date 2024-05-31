import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ton_client_sdk/ton_client_sdk.dart';

final config = {
  'network': {
    'endpoints': ["https://gql-testnet.venom.foundation/graphql"],
    'message_retries_count': 5,
    'message_processing_timeout': 40000,
    'wait_for_timeout': 40000,
    'out_of_sync_threshold': 15000,
    'access_key': ''
  },
  'crypto': {'fish_param': ''},
  'abi': {
    'message_expiration_timeout': 40000,
    'message_expiration_timeout_grow_factor': 1.5
  }
};

/// -----------
/// 查余额 参数
const programJson =
    r'{"query":"query getBalance($address: String!) {blockchain {account(address: $address) {info {balance}}}}","variables":{"address":"0:c04a3b76473ae6a33df68a63f41099362062c66893e0064592f14e76656f6b7c"}}';
const functionName = "net.query";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// 初始化， 必须调用
  await TonClientSdk.initTonClientSdk();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String balanceResult = "";
  String balanceResult2 = "";

  @override
  void initState() {
    super.initState();
    getBalanceByRawWay();
    getBalanceByWrapApi();
  }

  /// 通常不需要使用这个原始的方式， 使用 getBalanceByWrapApi 中 封装的类型即可
  void getBalanceByRawWay() async {
    final result = await tonCreateContext(config: jsonEncode(config));
    final context = jsonDecode(result)['result'] as int;

    balanceResult = await tonRequest(
        context: context,
        functionName: functionName,
        functionParamsJson: programJson);

    setState(() {});
  }

  void getBalanceByWrapApi() async {
    TonClient client = TonClient();
    await client.connect(config);

    const address =
        "0:c04a3b76473ae6a33df68a63f41099362062c66893e0064592f14e76656f6b7c";
    const getBalanceQuery =
        r'''query getBalance($address: String!) {blockchain {account(address: $address) {info {balance}}}}''';
    try {
      final p = ParamsOfQuery(
          query: getBalanceQuery, variables: {"address": address});
      var resultOfQuery = await client.net.query(p);

      print(resultOfQuery.result);
      balanceResult2 = resultOfQuery.result['result']['data']['blockchain']['account']
          ['info']?['balance'];
    } catch (_) {}
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ton Client Sdk Test'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('获取余额方式1'),
            Text(balanceResult),
            Divider(),
            const Text('获取余额方式2'),
            Text(balanceResult2),
          ],
        ),
      ),
    );
  }
}
