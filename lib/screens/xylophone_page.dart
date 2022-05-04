import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloPhonePage extends StatelessWidget {
  static const routeName = '/xylophone';

  const XyloPhonePage({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required int noteNumber, required Color buttonColor}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(noteNumber);
        },
        child: const Text(''),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          buildKey(noteNumber: 1, buttonColor: Colors.red),
          buildKey(noteNumber: 2, buttonColor: Colors.orange),
          buildKey(noteNumber: 3, buttonColor: Colors.yellow),
          buildKey(noteNumber: 4, buttonColor: Colors.green),
          buildKey(noteNumber: 5, buttonColor: Colors.teal),
          buildKey(noteNumber: 6, buttonColor: Colors.blue),
          buildKey(noteNumber: 7, buttonColor: Colors.purple)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
