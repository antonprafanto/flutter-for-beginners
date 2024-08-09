//Contoh Mengatur Arah Teks:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Mengatur Arah Teks'),
      ),
      body: Center(
        child: Text(
          'Hello Flutter',
          textDirection: TextDirection.ltr, // right-to-left
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    ),
  ));
}
