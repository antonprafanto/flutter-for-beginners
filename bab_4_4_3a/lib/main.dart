//Contoh Menggunakan RichText:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('Styling dengan RichText'),
    ),
    body: Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Hello ',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '!',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ],
        ),
      ),
    ),
  )));
}
