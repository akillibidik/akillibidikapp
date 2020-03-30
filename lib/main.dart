import 'package:flutter/material.dart';
//import 'package:akillibidik/screens/quiz.dart';
import 'package:akillibidik/screens/animalquiz.dart';
import 'package:akillibidik/screens/firstscreen.dart';
import 'package:akillibidik/screens/secondscreen.dart';
import 'package:akillibidik/screens/thirdscreen.dart';
import 'package:akillibidik/screens/loginscreen.dart';
import 'package:akillibidik/services/authentication.dart';
import 'package:akillibidik/screens/root_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter login demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget
        '/': (context) => RootPage(auth: new Auth()),
        'login': (context) => LoginSignupPage(),
        '/first': (context) => FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/quiz': (context) => AnimalQuiz(),
      },
      theme: ThemeData(
        accentColor: Colors.white,
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.accent,
          height: 10,
        ),
      ),
    );
  }
} /* 
Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz()));
           */

/* void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
      '/third': (context) => ThirdScreen(),
    },
  ));
} 
*/
