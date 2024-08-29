import 'package:bab_6_3a/pages/page_one.dart';
import 'package:bab_6_3a/pages/page_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Mengatur rute awal aplikasi
      initialRoute: '/',
      routes: {
        // Menghubungkan rute '/' dengan PageOne
        '/': (context) => const PageOne(),
        // Menghubungkan rute '/second' dengan PageTwo
        '/second': (context) => const PageTwo(text: 'Hello from Page One'),
      },
    );
  }
}
