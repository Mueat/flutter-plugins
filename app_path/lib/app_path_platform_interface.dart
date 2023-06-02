import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_path_method_channel.dart';

abstract class AppPathPlatform extends PlatformInterface {
  /// Constructs a AppPathPlatform.
  AppPathPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppPathPlatform _instance = MethodChannelAppPath();

  /// The default instance of [AppPathPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppPath].
  static AppPathPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppPathPlatform] when
  /// they register themselves.
  static set instance(AppPathPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getAppPath(String identifier) {
    throw UnimplementedError('getAppPath has not been implemented.');
  }
}
