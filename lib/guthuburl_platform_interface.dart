import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'guthuburl_method_channel.dart';

abstract class GuthuburlPlatform extends PlatformInterface {
  /// Constructs a GuthuburlPlatform.
  GuthuburlPlatform() : super(token: _token);

  static final Object _token = Object();

  static GuthuburlPlatform _instance = MethodChannelGuthuburl();

  /// The default instance of [GuthuburlPlatform] to use.
  ///
  /// Defaults to [MethodChannelGuthuburl].
  static GuthuburlPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GuthuburlPlatform] when
  /// they register themselves.
  static set instance(GuthuburlPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
