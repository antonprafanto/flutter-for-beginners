//Contoh Full Code untuk Checkbox:
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Checkbox'),
      ),
      body: Center(
        child: Checkbox(
          value: true,
          onChanged: (bool? newValue) {
            print('Checkbox diubah menjadi: $newValue');
          },
        ),
      ),
    ),
  ));
}
