import 'package:flutter/material.dart';

//The main function is the starting point for all Flutter apps.
void main() {
  runApp(
    MaterialApp(
      //Material App widget
      //Material design is a design style or concept created by Google adopted by many companies for Mobile Apps and websites http://material.io
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('My Flutter App'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ), //Add a "," at after each closing ) of every widget so that the file is automatically formatted with dart format
  );
}
