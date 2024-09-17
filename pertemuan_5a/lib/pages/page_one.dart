import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var selected = 'Satu';
  final dropdownlist = <String>[
    'Satu',
    'Dua',
    'Tiga',
    'Empat',
    'Lima',
  ];

  var isChecked = false;
  var gender = 'male';
  var isOn = false;
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu & Form'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _globalKey,
              child: TextFormField(validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Tolong di isi dulu datanya';
                }
                return null;
              }),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_globalKey.currentState!.validate()) {
                _showValidationSuccessPopup(context);
              }
            },
            child: Text('Valid'),
          )
        ],
      ),
    );
  }

  void _showValidationSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Validasi Sukses'),
          content: const Text('Formulir telah berhasil divalidasi'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
