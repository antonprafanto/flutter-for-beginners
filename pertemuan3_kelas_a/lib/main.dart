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
          title: Text('Ini RichText'),
        ),
        body: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Hallo',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      blurRadius: 20,
                      color: Colors.black45,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              TextSpan(
                text: ' Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' !',
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
