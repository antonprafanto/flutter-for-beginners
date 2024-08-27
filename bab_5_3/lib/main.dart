import 'package:flutter/material.dart';
import 'package:bab_5_3/widgets/sample_stack.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SampleStack(),
      ),
    );
  }
}
