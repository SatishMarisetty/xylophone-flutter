import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xyloApp());
}
class xyloApp extends StatelessWidget {
  void playSound(int sel)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$sel.wav'));
  }
  Widget block(Color colour,int sel)
  {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
        child: Container(
          color: colour,
        ),
        onPressed: ()
        {
          playSound(sel);
        },
      ),
    );
  }
  const xyloApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
             block(Colors.amber,1),
             block(Colors.blue,2),
             block(Colors.pinkAccent,3),
             block(Colors.orange,4),
             block(Colors.red,5),
             block(Colors.green,6),
             block(Colors.yellowAccent,7),
            ],
          ),
        ),
      ),
    );
  }
}