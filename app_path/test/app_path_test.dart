import 'package:flutter_test/flutter_test.dart';
import 'package:app_path/app_path.dart';
import 'package:app_path/app_path_platform_interface.dart';
import 'package:app_path/app_path_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppPathPlatform
    with MockPlatformInterfaceMixin
    implements AppPathPlatform {

  @override
  Future<String?> getAppPath(String identifier) => Future.value('42');
}

void main() {
  final AppPathPlatform initialPlatform = AppPathPlatform.instance;

  test('$MethodChannelAppPath is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppPath>());
  });

  test('getPlatformVersion', () async {
    AppPath appPathPlugin = AppPath();
    MockAppPathPlatform fakePlatform = MockAppPathPlatform();
    AppPathPlatform.instance = fakePlatform;

    expect(await appPathPlugin.getAppPath("com.dlient.macos"), '42');
  });
}
