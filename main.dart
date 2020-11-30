import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded playsound({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play("note$num.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playsound(num: 1, color: Colors.red),
              playsound(num: 2, color: Colors.orange),
              playsound(num: 3, color: Colors.yellow),
              playsound(num: 4, color: Colors.green),
              playsound(num: 5, color: Colors.teal),
              playsound(num: 6, color: Colors.blue),
              playsound(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
