import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(DeviceFileSource('assets/note$noteNumber.wav'));
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
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () async {
                      playSound(1);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () async {
                      playSound(2);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purpleAccent),
                    ),
                    onPressed: () async {
                      playSound(3);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.teal),
                    ),
                    onPressed: () async {
                      playSound(4);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.yellowAccent),
                    ),
                    onPressed: () async {
                      playSound(5);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent),
                    ),
                    onPressed: () async {
                      playSound(6);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.greenAccent),
                    ),
                    onPressed: () async {
                      playSound(7);
                    },
                    child: Text('')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
