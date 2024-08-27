import 'package:flutter/material.dart';

class MyColumnsRows extends StatelessWidget {
  const MyColumnsRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Column & Row'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color: Colors.cyan,
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 50,
                  color: Colors.red,
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Green Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Red Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'Yellow Container',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
