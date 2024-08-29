import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  final String text;
  const PageTwo({super.key, required this.text});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua'),
      ),
      body: Center(
        child: ElevatedButton(
          // Kembali ke halaman pertama menggunakan Navigator.pop
          onPressed: () {
            Navigator.pop(context);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Kembali ke Halaman 1'),
              Text(widget.text), // Menampilkan teks yang diteruskan dari halaman pertama
            ],
          ),
        ),
      ),
    );
  }
}
