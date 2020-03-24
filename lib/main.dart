import 'package:flutter/material.dart';
import './quiz.dart';
import './secondscreen.dart';
import './loginscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginScreen(),
        '/first': (context) => FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
        '/third': (context) => AnimalQuiz(),
      },
      theme: ThemeData(
        accentColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.accent,
          height: 10,
        ),
      ),
    ),
  );
}

class AnimalQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<AnimalQuiz> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sinav"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('Akilli Bidik')),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Ana menü'),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Start Quiz'),
              trailing: Icon(Icons.more_vert),
              dense: true,
              onTap: () {
                startQuiz();
              },
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Menu1'),
              trailing: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
                height: 50.0,
                color: Colors.blue,
                onPressed: startQuiz,
                child: new Text(
                  "Quiz 1",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void startQuiz() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => new Quiz()));
    });
  }
}

/* 
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
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Column(children: <Widget>[
        new RaisedButton(
          child: Text('Launch 2 screen'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
        ),
        new RaisedButton(
          child: Text('Launch 3 screen'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/third');
          },
        ),
      ]),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}
