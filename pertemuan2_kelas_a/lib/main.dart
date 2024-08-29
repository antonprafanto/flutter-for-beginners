import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
