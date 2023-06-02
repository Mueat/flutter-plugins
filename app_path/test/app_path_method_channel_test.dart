import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_path/app_path_method_channel.dart';

void main() {
  MethodChannelAppPath platform = MethodChannelAppPath();
  const MethodChannel channel = MethodChannel('app_path');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getAppPath("com.dlient.macos"), '42');
  });
}
