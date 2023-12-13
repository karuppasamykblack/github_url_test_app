import 'package:flutter_test/flutter_test.dart';
import 'package:guthuburl/guthuburl.dart';
import 'package:guthuburl/guthuburl_platform_interface.dart';
import 'package:guthuburl/guthuburl_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGuthuburlPlatform
    with MockPlatformInterfaceMixin
    implements GuthuburlPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GuthuburlPlatform initialPlatform = GuthuburlPlatform.instance;

  test('$MethodChannelGuthuburl is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGuthuburl>());
  });

  test('getPlatformVersion', () async {
    Guthuburl guthuburlPlugin = Guthuburl();
    MockGuthuburlPlatform fakePlatform = MockGuthuburlPlatform();
    GuthuburlPlatform.instance = fakePlatform;

    expect(await guthuburlPlugin.getPlatformVersion(), '42');
  });
}
