import 'package:bab_7_4/models/notes.dart';
import 'package:bab_7_4/utils/card_color.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final int index;
  final Note note;
  const CardWidget({super.key, required this.index, required this.note});

  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
      default:
        return 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = cardColors[index % cardColors.length];
    final minHeight = getMinHeight(index);
    return Card(
      color: color,
      child: Container(
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              note.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
