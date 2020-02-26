import 'dart:async';

import 'package:flutter/services.dart';

class AudioMediaControl {
  static const MethodChannel _channel =
      const MethodChannel('audio_media_control');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
