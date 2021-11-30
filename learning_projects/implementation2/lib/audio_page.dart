import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class AudioScreen extends StatelessWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('sample.mp3');
                  },
                  child: Text("Click Me"))),
        ),
      ),
    );
  }
}