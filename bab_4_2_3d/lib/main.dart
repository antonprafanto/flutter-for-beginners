//Contoh Full Code untuk Row:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Row'),
      ),
      body: Center(
        child: Row(
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
