import 'package:flutter_test/flutter_test.dart';
import 'package:chat_ui_sample/chat_ui_sample.dart';
import 'package:chat_ui_sample/chat_ui_sample_platform_interface.dart';
import 'package:chat_ui_sample/chat_ui_sample_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockChatUiSamplePlatform
    with MockPlatformInterfaceMixin
    implements ChatUiSamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ChatUiSamplePlatform initialPlatform = ChatUiSamplePlatform.instance;

  test('$MethodChannelChatUiSample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelChatUiSample>());
  });

  test('getPlatformVersion', () async {
    ChatUiSample chatUiSamplePlugin = ChatUiSample();
    MockChatUiSamplePlatform fakePlatform = MockChatUiSamplePlatform();
    ChatUiSamplePlatform.instance = fakePlatform;

    expect(await chatUiSamplePlugin.getPlatformVersion(), '42');
  });
}
