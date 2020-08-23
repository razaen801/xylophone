import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneAapp());
}

class XylophoneAapp extends StatelessWidget {
  void playSound(int audio){
    final player = AudioCache();
    player.play('note$audio.wav');
  }
  Widget buildKey(Color colors, audioNum){
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(audioNum);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),buildKey(Colors.orange, 2),buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),buildKey(Colors.teal, 5),buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
