import 'package:audioplayers/audioplayers.dart';

AudioPlayer _audioPlayer = AudioPlayer();

Future<void> playAudio(String path) async {
  await _audioPlayer.play(DeviceFileSource(path));
}
