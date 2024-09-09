import 'package:bab_7_4/utils/notes_database.dart';  // Baris 1
import 'package:flutter/material.dart';  // Baris 2
import '../models/notes.dart';  // Baris 3

class FormPage extends StatefulWidget {  // Baris 4
  const FormPage({super.key});  // Baris 5

  @override
  State<FormPage> createState() => _FormPageState();  // Baris 6
}

class _FormPageState extends State<FormPage> {  // Baris 7
  TextEditingController titleController = TextEditingController();  // Baris 8
  TextEditingController descController = TextEditingController();  // Baris 9

  Future addNote() async {  // Baris 10
    final note = Note(  // Baris 11
      title: titleController.text,  // Baris 12
      description: descController.text,  // Baris 13
      time: DateTime.now(),  // Baris 14
    );
    await NotesDatabase.instance.create(note);  // Baris 15
    Navigator.of(context).pop();  // Baris 16
  }

  @override
  Widget build(BuildContext context) {  // Baris 17
    return Scaffold(  // Baris 18
      appBar: AppBar(  // Baris 19
        title: const Text('Form'),  // Baris 20
        actions: [  // Baris 21
          InkWell(  // Baris 22
            onTap: addNote,  // Baris 23
            child: const Icon(Icons.save),  // Baris 24
          ),
          const SizedBox(  // Baris 25
            width: 16,  // Baris 26
          ),
        ],
      ),
      body: Padding(  // Baris 27
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),  // Baris 28
        child: ListView(  // Baris 29
          children: [  // Baris 30
            TextFormField(  // Baris 31
              controller: titleController,  // Baris 32
              maxLines: 1,  // Baris 33
              style: const TextStyle(  // Baris 34
                color: Colors.black,  // Baris 35
                fontWeight: FontWeight.bold,  // Baris 36
                fontSize: 24,  // Baris 37
              ),
              decoration: InputDecoration(  // Baris 38
                enabledBorder: OutlineInputBorder(  // Baris 39
                  borderSide: const BorderSide(width: 2, color: Colors.grey),  // Baris 40
                  borderRadius: BorderRadius.circular(10),  // Baris 41
                ),
                focusedBorder: OutlineInputBorder(  // Baris 42
                  borderSide: const BorderSide(width: 2, color: Colors.grey),  // Baris 43
                  borderRadius: BorderRadius.circular(10),  // Baris 44
                ),
                hintText: 'Judul',  // Baris 45
                hintStyle: const TextStyle(  // Baris 46
                  color: Colors.grey,  // Baris 47
                ),
              ),
            ),
            const SizedBox(  // Baris 48
              height: 8,  // Baris 49
            ),
            TextFormField(  // Baris 50
              controller: descController,  // Baris 51
              maxLines: 16,  // Baris 52
              style: const TextStyle(  // Baris 53
                color: Colors.grey,  // Baris 54
                fontWeight: FontWeight.bold,  // Baris 55
                fontSize: 20,  // Baris 56
              ),
              decoration: InputDecoration(  // Baris 57
                enabledBorder: OutlineInputBorder(  // Baris 58
                  borderSide: const BorderSide(width: 2, color: Colors.grey),  // Baris 59
                  borderRadius: BorderRadius.circular(10),  // Baris 60
                ),
                focusedBorder: OutlineInputBorder(  // Baris 61
                  borderSide: const BorderSide(width: 2, color: Colors.grey),  // Baris 62
                  borderRadius: BorderRadius.circular(10),  // Baris 63
                ),
                hintText: 'Ketik catatan...',  // Baris 64
                hintStyle: const TextStyle(  // Baris 65
                  color: Colors.grey,  // Baris 66
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
