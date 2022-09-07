import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

abstract class YaruSettings {
  const YaruSettings._();
  const factory YaruSettings() = YaruMethodChannel;

  Future<String?> getThemeName();
  Stream<String?> get themeNameChanged;
}

class YaruMethodChannel extends YaruSettings {
  const YaruMethodChannel() : super._();

  @visibleForTesting
  final methodChannel = const MethodChannel('yaru');

  @visibleForTesting
  final eventChannel = const EventChannel('yaru/events');

  @override
  Future<String?> getThemeName() async {
    return methodChannel.invokeMethod<String>('getThemeName');
  }

  @override
  Stream<String?> get themeNameChanged {
    return eventChannel
        .receiveBroadcastStream('themeNameChanged')
        .map((event) => event as String?);
  }
}
