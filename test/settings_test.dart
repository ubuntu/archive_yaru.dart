import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru/src/settings.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('getThemeName', () async {
    const settings = YaruMethodChannel();
    settings.methodChannel.setMockMethodCallHandler((methodCall) async {
      expect(methodCall, isMethodCall('getThemeName', arguments: null));
      return 'foo';
    });
    expect(await settings.getThemeName(), 'foo');
  });

  test('themeNameChanged', () async {
    const settings = YaruMethodChannel();

    const codec = StandardMethodCodec();
    final channel = settings.eventChannel.name;
    final messenger =
        TestDefaultBinaryMessengerBinding.instance!.defaultBinaryMessenger;

    Future<ByteData?> emitEvent(Object? event) {
      return messenger.handlePlatformMessage(
        channel,
        codec.encodeSuccessEnvelope(event),
        (_) {},
      );
    }

    messenger.setMockMessageHandler(channel, (message) async {
      expect(
        codec.decodeMethodCall(message),
        anyOf([
          isMethodCall('listen', arguments: 'themeNameChanged'),
          isMethodCall('cancel', arguments: null),
        ]),
      );
      return codec.encodeSuccessEnvelope(null);
    });

    settings.themeNameChanged.listen(expectAsync1((ev) => expect(ev, 'bar')));

    await emitEvent('bar');
  });
}
