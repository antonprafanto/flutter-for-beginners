import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh SizedBox'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Teks atas'),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Text('Teks bawah'),
          ],
        ),
      ),
    ),
  ));
}
