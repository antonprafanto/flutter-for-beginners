import 'package:bab_6_1/pages/page_one.dart';
import 'package:bab_6_1/pages/page_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const PageOne(),
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) => const PageTwo(text: 'text'),
      },
    );
  }
}
