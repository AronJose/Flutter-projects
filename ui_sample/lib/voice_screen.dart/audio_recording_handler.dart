import 'package:flutter_sound/flutter_sound.dart';
import 'package:ui_sample/voice_screen.dart/permission_handler.dart';

FlutterSoundRecorder _recorder = FlutterSoundRecorder();

Future<void> startRecording() async {
  requestPermissions();
  await _recorder.startRecorder(toFile: 'audio.aac');
}

Future<String?> stopRecording() async {
  String? path = await _recorder.stopRecorder();
  return path;
  // Use the path to save or upload the audio file
}
