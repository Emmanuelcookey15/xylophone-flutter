import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  FlatButton soundPlayer(int noteValue, Color colorValue) {
    return FlatButton(
      color: colorValue,
      onPressed: () {
        final player = AudioCache();
        player.play('note$noteValue.wav');
      },
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
            children: <Widget>[
              Expanded(child: soundPlayer(1, Colors.red)),
              Expanded(child: soundPlayer(2, Colors.orange)),
              Expanded(child: soundPlayer(3, Colors.yellow)),
              Expanded(child: soundPlayer(4, Colors.green)),
              Expanded(child: soundPlayer(5, Colors.teal)),
              Expanded(child: soundPlayer(6, Colors.blue)),
              Expanded(child: soundPlayer(7, Colors.purple)),
            ],
          ),
        ),
      ),
    );
  }
}
