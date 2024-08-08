//Contoh Full Code untuk Padding:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Padding'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text('Dengan Padding'),
        ),
      ),
    ),
  ));
}
