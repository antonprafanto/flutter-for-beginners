import 'package:flutter/material.dart';
import 'package:pertemuan_4_a/layouts/bottom_navigation_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyBottomNavigationBar()
      ),
    );
  }
}
