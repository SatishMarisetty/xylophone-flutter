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
  const xyloApp({super.key});
  @override
  Widget build(BuildContext context) {
    int sel=1;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Container(
                  color: Colors.yellow,
                ),
                onPressed: ()
                  {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.blue,
                  ),
                  onPressed: ()
                  {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                  onPressed: ()
                  {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.orange,
                  ),
                  onPressed: ()
                  {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.redAccent,
                  ),
                  onPressed: ()
                  {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.greenAccent,
                  ),
                  onPressed: ()
                  {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  child: Container(
                    color: Colors.indigoAccent,
                  ),
                  onPressed: ()
                  {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


