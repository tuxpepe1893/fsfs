import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {

  void PlaySound(int SoundN) async{
    final player = AudioPlayer();
    await player.play(AssetSource("note$SoundN.wav"),
    );


  }
Expanded BuldingKey({Color color}){
  return Expanded(
    child: Container(color:Colors.red,
      child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        child: Container(),
        onPressed:() { PlaySound(soundNumber)
        ;
        },
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( backgroundColor: Colors.black,
        body: SafeArea(
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
            children: [

              BuldingKey(color: Colors.blue),
              BuldingKey(soundNumber: 1),
              BuldingKey(),
              BuldingKey(),
              BuldingKey(),
              BuldingKey(),
              BuldingKey(),

            ],
          ),
        ),
      ),
    );
  }
}
