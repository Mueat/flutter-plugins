
import 'app_path_platform_interface.dart';

class AppPath {
  /// Find application path by identifier
  Future<String?> getAppPath(String identifier) {
    return AppPathPlatform.instance.getAppPath(identifier);
  }
}
