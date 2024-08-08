import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _displayText = 'Hello World';

  void _updateText() {
    setState(() {
      _displayText = 'Button Pressed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Interactive App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_displayText),
              ElevatedButton(
                onPressed: _updateText,
                child: Text('Press Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
