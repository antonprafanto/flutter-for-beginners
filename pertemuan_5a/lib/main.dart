import 'package:flutter/material.dart';
import 'package:pertemuan_5a/pages/page_one.dart';
import 'package:pertemuan_5a/pages/page_two.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) => const PageTwo(),
      },
    );
  }
}
