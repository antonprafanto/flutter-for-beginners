//Contoh Full Code untuk Container:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Container'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 246, 47, 32)),
          ),
          child: Text('Ini adalah Container'),
        ),
      ),
    ),
  ));
}
