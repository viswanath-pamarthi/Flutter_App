import 'package:flutter/material.dart';

//The main function is the starting point for all Flutter apps.
void main() {
  runApp(
    MaterialApp(
      //Material App widget
      //Material design is a design style or concept created by Google adopted by many companies for Mobile Apps and websites http://material.io
      home: Center(
        child: Text(
            'Hello world'), //Add a "," at after each closing ) of every widget so that the file is automatically formatted with dart format
      ),
    ),
  );
}
