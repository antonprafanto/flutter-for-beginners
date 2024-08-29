import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Container'),
      ),
      body: Container(
        height: 300,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.black12, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight ,
          ),
          border: Border.all(
            width: 3,
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
