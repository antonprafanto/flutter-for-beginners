import 'package:flutter/material.dart';

class MyColumnRow extends StatelessWidget {
  const MyColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Column Row'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  color: Colors.orange,
                ),
                Container(
                  width: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
