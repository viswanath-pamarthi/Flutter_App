import 'package:flutter/material.dart';
import 'package:flutter_app/screens/bmi_calculator_page.dart';
import 'package:flutter_app/screens/bmi_calculator_results_page.dart';
import 'package:flutter_app/screens/dice_page.dart';
import 'package:flutter_app/screens/magic_8_ball_page.dart';
import 'package:flutter_app/screens/my_card_page.dart';
import 'package:flutter_app/screens/quizzler_page.dart';
import 'package:flutter_app/screens/story_page.dart';
import 'package:flutter_app/screens/xylophone_page.dart';

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
    //Material App widget
    //Material design is a design style or concept created by Google adopted by many companies for Mobile Apps and websites http://material.io
    return MaterialApp(
      //App wide theme
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // secondary: Colors.purple,
          //#0A0D22 - 0xFF0A0D22 - use 0xFF for # in Flutter
          primary: const Color(0xFF0A0D22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        // textTheme: const TextTheme(
        //   bodyText2: TextStyle(color: Colors.white),
        // ),
      ),
      // home: MyCardPage(),
      initialRoute: MyCardPage.routeName,
      //Named routes
      routes: {
        MyCardPage.routeName: (context) => const MyCardPage(),
        DicePage.routeName: (context) => const DicePage(),
        Magic8BallPage.routeName: (context) => const Magic8BallPage(),
        XyloPhonePage.routeName: (context) => const XyloPhonePage(),
        QuizzlerPage.routeName: (context) => const QuizzlerPage(),
        StoryPage.routeName: (context) => const StoryPage(),
        BmiCalculatorPage.routeName: (context) => const BmiCalculatorPage(),
        BmiCalculatorResultsPage.routeName: (context) =>
            BmiCalculatorResultsPage(),
      },
    ); //Add a "," at after each closing ) of every widget so that the file is automatically formatted with dart format
  }
}
