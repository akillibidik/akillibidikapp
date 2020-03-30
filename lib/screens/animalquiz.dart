import 'package:flutter/material.dart';
import 'package:akillibidik/screens/quiz.dart';

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
              title: Text('Sinavi baslat'),
              trailing: Icon(Icons.more_vert),
              dense: true,
              onTap: () {
                startQuiz();
              },
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Menu 1'),
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
                  "Sinav",
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
