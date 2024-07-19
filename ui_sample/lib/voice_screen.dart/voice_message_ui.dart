import 'package:flutter/material.dart';
import 'package:ui_sample/voice_screen.dart/audio_recording_handler.dart';
import 'package:ui_sample/voice_screen.dart/play_record_audio.dart';

class VoiceMessageScreen extends StatefulWidget {
  @override
  _VoiceMessageScreenState createState() => _VoiceMessageScreenState();
}

class _VoiceMessageScreenState extends State<VoiceMessageScreen> {
  bool _isRecording = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Message'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                if (_isRecording) {
                  await stopRecording();
                } else {
                  await startRecording();
                }
                setState(() {
                  _isRecording = !_isRecording;
                });
              },
              child: Text(_isRecording ? 'Stop Recording' : 'Start Recording'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Replace with the actual path to the recorded file
                String path = 'audio.aac';
                await playAudio(path);
              },
              child: Text('Play Recording'),
            ),
          ],
        ),
      ),
    );
  }
}
