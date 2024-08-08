//Contoh Full Code untuk Column:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Teks Pertama'),
            Text('Teks Kedua'),
          ],
        ),
      ),
    ),
  ));
}
