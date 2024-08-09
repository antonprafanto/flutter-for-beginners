import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Container')),
      body: Container(
        width: double.infinity,
        height: 350,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 3,
            color: Colors.red,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            const SizedBox(height: 20),
            const Text(
              'ini container',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 36,
                fontWeight: FontWeight.w500,
                wordSpacing: 10,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
