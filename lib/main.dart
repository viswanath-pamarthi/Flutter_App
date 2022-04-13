import 'package:flutter/material.dart';

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
    return MaterialApp(
      //Material App widget
      //Material design is a design style or concept created by Google adopted by many companies for Mobile Apps and websites http://material.io
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   title: Text('My Flutter App'),
        //   backgroundColor: Colors.blue,
        // ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/jerry.jpeg"),
              ),
              const Text('Viswanath P',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              Card(
                // color: Colors.white, //Default color of white for Card
                // padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+1 123 456 789',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'test@gmail.com',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                // padding: const EdgeInsets.all(10.0),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    ); //Add a "," at after each closing ) of every widget so that the file is automatically formatted with dart format
  }
}

/*
Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+1 123 456 789',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
 */
/*
Row(
children: <Widget>[
const Icon(
Icons.email,
color: Colors.teal,
),
const SizedBox(
width: 10.0,
),
Text(
'test@gmail.com',
style: TextStyle(
color: Colors.teal[900],
fontFamily: 'Source Sans Pro',
fontSize: 20.0,
),
),
],
),
*/
// SafeArea(
// child: Column(
// //By default  Column takes all the space vertically,  can change this with mainAxisSize(y)
// // mainAxisSize: MainAxisSize.min,//
// verticalDirection:
// VerticalDirection.up, //main axis is y axis for column
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// //cross Axis is x axis for column
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: <Widget>[
// Container(
// height: 100.0,
// // width: 100.0,
// color: Colors.red,
// child: const Text('Container 1'),
// ),
// Container(
// // width: 200.0,
// height: 100.0,
// color: Colors.blue,
// child: const Text('Container 2'),
// ),
// Container(
// // width: 100.0,
// height: 100.0,
// color: Colors.white,
// child: const Text("Container 3"),
// )
// ],
// ))

/*
SafeArea(
child: Row(
children: <Widget>[
Container(
width: 100.0,
height: double.infinity,
color: Colors.red,
),
Column(
children: <Widget>[
Container(
color: Colors.yellow,
width: 100.0,
height: 100.0,
),
Container(
color: Colors.green,
width: 100.0,
height: 100.0,
)
],
mainAxisAlignment: MainAxisAlignment.center,
),
Container(
color: Colors.blue,
width: 100.0,
)
],
mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.,
),
),*/
