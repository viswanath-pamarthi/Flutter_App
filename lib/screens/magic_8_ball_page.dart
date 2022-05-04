import 'package:flutter/material.dart';
import 'dart:math';

class Magic8BallPage extends StatelessWidget {
  static const routeName = '/magic8Ball';

  const Magic8BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballState.png'),
        onPressed: () {
          setState(() {
            ballState = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
