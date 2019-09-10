import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CupertinoPage());
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}
//기본으로 터치 안해도 되는 부분

class _HelloPageState extends State<HelloPage> {
  String _message = 'hellow world';
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _changeMessage),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30)),
                Text('$_counter', style: TextStyle(fontSize: 30)),
              ],
            )
        ));
  }

  void _changeMessage() {
    setState(() {
      _message = 'hello world';
      _counter++;
    });
  }
}
