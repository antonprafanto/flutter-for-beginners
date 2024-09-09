import 'package:bab_7_3/models/notes.dart';
import 'package:bab_7_3/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Note> notes = [
    Note(
        id: 1,
        title: 'Bensin',
        description: 'kesuperindo habis 1juta',
        time: DateTime.now()),
    Note(
        id: 2,
        title: 'Futsal',
        description: 'kesuperindo habis 1juta',
        time: DateTime.now()),
    Note(
        id: 3,
        title: 'Work',
        description: 'kesuperindo habis 1juta',
        time: DateTime.now()),
    Note(
        id: 4,
        title: 'Lari',
        description: 'kesuperindo habis 1juta',
        time: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Catatan'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return CardWidget(
              index: index,
              note: notes[index],
            );
          },
          itemCount: notes.length,
        ),
      ),
    );
  }
}
