import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'guthuburl_platform_interface.dart';

/// An implementation of [GuthuburlPlatform] that uses method channels.
class MethodChannelGuthuburl extends GuthuburlPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('guthuburl');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
