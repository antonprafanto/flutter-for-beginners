import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var selected = 'Satu';
  final dropdownList = <String>[
    'Satu',
    'Dua',
    'Tiga',
    'Empat',
    'Lima',
  ];

  var isChecked = false;
  var sex = 'male';
  var isOn = false;
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One & Form'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _globalKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tolong di isi dulu datanya';
                  }
                  return null;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_globalKey.currentState!.validate()) {
                _showValidationSuccessPopup(context); // Tampilkan pop-up jika validasi berhasil
              }
            },
            child: const Text('validate'),
          ),
          Switch(
            value: isOn,
            onChanged: (val) {
              setState(() {
                isOn = val;
              });
            },
          ),
          DropdownButtonFormField(
            value: selected,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            items: dropdownList
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (String? val) {
              setState(() {
                if (val != null) selected = val;
              });
            },
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: const Text('Klik sekali'),
              ),
              InkWell(
                onDoubleTap: () {
                  _showPopup(context);  // Memanggil fungsi untuk menampilkan dialog
                },
                child: const Text('Klik 2x'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi untuk menampilkan pop-up saat double tap
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Double Tap Detected'),
          content: const Text('Anda telah mengklik teks ini dua kali.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk menampilkan pop-up setelah validasi berhasil
  void _showValidationSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Validation Success'),
          content: const Text('Formulir telah berhasil divalidasi.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Menutup dialog
              },
            ),
          ],
        );
      },
    );
  }
}
