import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  const SampleDialog({super.key});

  @override
  State<SampleDialog> createState() => _SampleDialogState();
}

class _SampleDialogState extends State<SampleDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Dialog'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: showAlertDialog,
                child: const Text('Show Alert Dialog'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: showMyBottomSheet,
                child: const Text('Show Custom Bottom Sheet'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function untuk menampilkan AlertDialog
  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Peringatan'),
          content: const Text('Apakah Anda yakin ingin melanjutkan?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Ya, Lanjutkan'),
            ),
          ],
        );
      },
    );
  }

  // Function untuk menampilkan Custom Bottom Sheet
  void showMyBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Ini adalah Custom Bottom Sheet',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Tutup Bottom Sheet'),
              ),
            ],
          ),
        );
      },
    );
  }
}
