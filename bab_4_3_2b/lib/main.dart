//Contoh Lengkap dengan Lifecycle Methods:
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _text = 'Ini adalah StatefulWidget';

  @override
  void initState() {
    super.initState();
    // Inisialisasi
    print('initState dipanggil');
  }

  @override
  void dispose() {
    // Bersihkan resource
    print('dispose dipanggil');
    super.dispose();
  }

  void _changeText() {
    setState(() {
      _text = 'Teks telah berubah!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_text),
            ElevatedButton(
              onPressed: _changeText,
              child: Text('Ubah Teks'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyStatefulWidget(),
  ));
}
