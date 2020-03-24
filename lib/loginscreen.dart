import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanici Girisi"),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            children: <Widget>[
              Text("Kulanici Adi: "),
              ConstrainedBox(
                constraints: BoxConstraints.expand(height: 20),
                child: TextField(),
              ),
              Text("Sifre: "),
              ConstrainedBox(
                constraints: BoxConstraints.expand(height: 20),
                child: TextField(),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        // Navigate back to the first screen by popping the current route
                        // off the stack.
                        Navigator.pushNamed(context, '/third');
                      },
                      child: Text('Giris yap'),
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        // Navigate back to the first screen by popping the current route
                        // off the stack.
                        Navigator.pushNamed(context, '/third');
                      },
                      child: Text('Kayit ol'),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  // Navigate back to the first screen by popping the current route
                  // off the stack.
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Google ile giris'),
              ),
              RaisedButton(
                onPressed: () {
                  // Navigate back to the first screen by popping the current route
                  // off the stack.
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Facebook ile giris'),
              ),
              RaisedButton(
                onPressed: () {
                  // Navigate back to the first screen by popping the current route
                  // off the stack.
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Sinavi baslat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Flutter code sample for TextField

// This sample shows how to get a value from a TextField via the [onSubmitted]
// callback.

/*
/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _controller,
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text('You typed "$value".'),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
*/
