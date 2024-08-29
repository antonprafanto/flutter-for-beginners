import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu'),
      ),
      body: Center(
        child: ElevatedButton(
          // Navigasi ke halaman kedua menggunakan Navigator.pushNamed
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Pergi Ke Halaman 2'),
        ),
      ),
    );
  }
}
