import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh ElevatedButton'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Tombol ditekan');
          },
          child: Text('Tekan Saya'),
        ),
      ),
    ),
  ));
}
