import 'package:bab_7_4/models/notes.dart';  // Baris 1
import 'package:bab_7_4/pages/form_page.dart';  // Baris 2
import 'package:bab_7_4/utils/notes_database.dart';  // Baris 3
import 'package:bab_7_4/widgets/card_widget.dart';  // Baris 4
import 'package:flutter/material.dart';  // Baris 5

class HomePage extends StatefulWidget {  // Baris 6
  const HomePage({super.key});  // Baris 7

  @override
  State<HomePage> createState() => _HomePageState();  // Baris 8
}

class _HomePageState extends State<HomePage> {  // Baris 9
  List<Note> notes = [];  // Baris 10
  bool isLoading = false;  // Baris 11

  Future refreshNotes() async {  // Baris 12
    setState(() {  // Baris 13
      isLoading = true;  // Baris 14
    });
    notes = await NotesDatabase.instance.readAllNotes();  // Baris 15
    setState(() {  // Baris 16
      isLoading = false;  // Baris 17
    });
  }

  @override
  void initState() {  // Baris 18
    refreshNotes();  // Baris 19
    super.initState();  // Baris 20
  }

  @override
  void dispose() {  // Baris 21
    super.dispose();  // Baris 22
    NotesDatabase.instance.close();  // Baris 23
  }

  @override
  Widget build(BuildContext context) {  // Baris 24
    return Scaffold(  // Baris 25
      appBar: AppBar(  // Baris 26
        title: const Text('Buku Catatan'),  // Baris 27
        automaticallyImplyLeading: false,  // Baris 28
      ),
      body: isLoading  // Baris 29
          ? const Center(  // Baris 30
              child: CircularProgressIndicator(),  // Baris 31
            )
          : Padding(  // Baris 32
              padding: const EdgeInsets.all(16.0),  // Baris 33
              child: GridView.builder(  // Baris 34
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  // Baris 35
                  crossAxisCount: 2,  // Baris 36
                  mainAxisSpacing: 8,  // Baris 37
                  crossAxisSpacing: 8,  // Baris 38
                ),
                itemBuilder: (context, index) {  // Baris 39
                  return CardWidget(  // Baris 40
                    index: index,  // Baris 41
                    note: notes[index],  // Baris 42
                  );
                },
                itemCount: notes.length,  // Baris 43
              ),
            ),
      floatingActionButton: FloatingActionButton(  // Baris 44
        onPressed: () async {  // Baris 45
          await Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) {  // Baris 46
            return const FormPage();  // Baris 47
          }));
          refreshNotes();  // Baris 48
        },
        child: const Icon(Icons.note_add),  // Baris 49
      ),
    );
  }
}
