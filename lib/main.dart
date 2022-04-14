import 'package:flutter/material.dart';
import 'package:flutter_app/my_card_page.dart';

//The main function is the starting point for all Flutter apps.
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //build is called when ever MyApp widget new version is created, i.e. any change in the build method code, it is reload with hot reload
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //Material App widget
        //Material design is a design style or concept created by Google adopted by many companies for Mobile Apps and websites http://material.io
        home:
            MyCardPage()); //Add a "," at after each closing ) of every widget so that the file is automatically formatted with dart format
  }
}
