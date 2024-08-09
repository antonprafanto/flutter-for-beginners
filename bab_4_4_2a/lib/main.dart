//Contoh Penggunaan Text dengan TextStyle:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Styling dengan TextStyle'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            letterSpacing: 2,
            wordSpacing: 5,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        ),
      ),
    ),
  ));
}
