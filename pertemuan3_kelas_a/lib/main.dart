import 'package:flutter/material.dart';
import 'package:pertemuan3_kelas_a/widgets/container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyContainer(),
      ),
    );
  }
}
