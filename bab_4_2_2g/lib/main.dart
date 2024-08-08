//Contoh Full Code untuk Align:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Align'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Text('Teks di tengah'),
      ),
    ),
  ));
}
