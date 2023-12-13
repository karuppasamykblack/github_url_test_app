
import 'guthuburl_platform_interface.dart';

class Guthuburl {
  Future<String?> getPlatformVersion() {
    return GuthuburlPlatform.instance.getPlatformVersion();
  }
}
