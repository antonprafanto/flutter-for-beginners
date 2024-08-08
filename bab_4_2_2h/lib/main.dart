//Contoh Full Code untuk Opacity:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Opacity'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.1,
          child: Text('Teks dengan Opacity'),
        ),
      ),
    ),
  ));
}
