import 'package:flutter/material.dart';
import 'dart:math';

// class DicePage extends StatelessWidget {
//   DicePage({Key? key}) : super(key: key);
// }
///When something needs to changed once the widget is shown then we use stateful widget
///else nothing needs to change then we use a stateless widget
/// shortcut to create - stful
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //Build is the method that gets called if there is change, and everything is re-drawn
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Game'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    //Set state triggers a re build the widget and re-draws the changes
                    setState(() {
                      //all the places leftDiceNumber, rightDiceNumber used is needs to be updated and re-draws the entire screen
                      changeDiceFace();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red,
    );
  }

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}
