import 'package:flutter/material.dart';

class MyBottomnavigationbar extends StatefulWidget {
  const MyBottomnavigationbar({super.key});

  @override
  State<MyBottomnavigationbar> createState() => _MyBottomnavigationbarState();
}

class _MyBottomnavigationbarState extends State<MyBottomnavigationbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOption = <Widget>[
    Text(
      'Index Home',
      style: optionStyle,
    ),
    Text(
      'Index Business',
      style: optionStyle,
    ),
    Text(
      'Index School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Bottom Navagation Bar'),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
