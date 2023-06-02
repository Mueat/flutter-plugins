import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_path_platform_interface.dart';

/// An implementation of [AppPathPlatform] that uses method channels.
class MethodChannelAppPath extends AppPathPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_path');

  @override
  Future<String?> getAppPath(String identifier) async {
    final Map<String, dynamic> params = {
      "message": identifier
    };
    final version = await methodChannel.invokeMethod<String>('getAppPath', params);
    return version;
  }
}
