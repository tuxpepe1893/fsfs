import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  void playSound(int soundNumber) async {
    await player.play("note $soundNumber.wav" as Source);
  }

  Expanded buildingKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Container(),
        ),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildingKey(color: Colors.blue, soundNumber: 0),
              buildingKey(color: Colors.red, soundNumber: 1),
              buildingKey(color: Colors.orange, soundNumber: 2),
              buildingKey(color: Colors.yellow, soundNumber: 3),
              buildingKey(color: Colors.green, soundNumber: 4),
              buildingKey(color: Colors.teal, soundNumber: 5),
              buildingKey(color: Colors.blue, soundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}
