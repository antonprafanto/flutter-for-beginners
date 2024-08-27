import 'package:flutter/material.dart';

class SampleBottomNavigationBar extends StatefulWidget {
  const SampleBottomNavigationBar({super.key});

  @override
  State<SampleBottomNavigationBar> createState() => _SampleBottomNavigationBarState();
}

class _SampleBottomNavigationBarState extends State<SampleBottomNavigationBar> {
  int selectedIndex = 0;

  // Daftar widget yang akan ditampilkan di setiap tab
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Halaman Home',
      style: TextStyle(fontSize: 24),
    ),
    Text(
      'Halaman Favorit',
      style: TextStyle(fontSize: 24),
    ),
    Text(
      'Halaman Setting',
      style: TextStyle(fontSize: 24),
    ),
    Text(
      'Halaman Akun',
      style: TextStyle(fontSize: 24),
    ),
  ];

  // Fungsi untuk mengganti tab yang aktif
  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Bottom Navigation Bar'),
      ),
      body: Center(
        // Menampilkan konten berdasarkan tab yang dipilih dengan animasi transisi
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _widgetOptions[selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[50],
        iconSize: 30,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Tooltip(
              message: 'Kembali ke halaman Home',
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Tooltip(
              message: 'Lihat favorit Anda',
              child: Icon(Icons.favorite),
            ),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Tooltip(
              message: 'Pengaturan aplikasi',
              child: Icon(Icons.settings),
            ),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Tooltip(
              message: 'Kelola akun Anda',
              child: Icon(Icons.person),
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
