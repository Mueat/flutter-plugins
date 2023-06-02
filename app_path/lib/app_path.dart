
import 'app_path_platform_interface.dart';

class AppPath {
  Future<String?> getAppPath(String identifier) {
    return AppPathPlatform.instance.getAppPath(identifier);
  }
}
