import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _text = 'Ini Adalah StatefulWidget';

  void _changeText() {
    setState(() {
      _text = 'Text Telah Berubah';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Column(
        children: [
          Text(_text),
          ElevatedButton(onPressed: _changeText, child: Text('Ubah text'))
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MyStatefulWidget(),
    ),
  );
}
