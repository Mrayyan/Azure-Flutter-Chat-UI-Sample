import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_ui_sample/chat_ui_sample_method_channel.dart';

void main() {
  MethodChannelChatUiSample platform = MethodChannelChatUiSample();
  const MethodChannel channel = MethodChannel('chat_ui_sample');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
