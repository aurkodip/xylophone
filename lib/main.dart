import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int tuneNo){
    final player = AudioPlayer();
    player.play(AssetSource('note$tuneNo.wav'));
  }

  Expanded buildKey({required Color colour, required int tuneNo}){
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(colour),
        ),
        onPressed: () {
          playSound(tuneNo);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colour: Colors.purple, tuneNo: 1),
              buildKey(colour: Colors.indigo, tuneNo: 2),
              buildKey(colour: Colors.blue, tuneNo: 3),
              buildKey(colour: Colors.green, tuneNo: 4),
              buildKey(colour: Colors.yellow, tuneNo: 5),
              buildKey(colour: Colors.orange, tuneNo: 6),
              buildKey(colour: Colors.red, tuneNo: 7),



            ],

          ),
        ),
      ),
    );
  }
}
