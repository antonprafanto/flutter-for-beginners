import 'package:sqflite/sqflite.dart';  // Baris 1
import 'package:path/path.dart';  // Baris 2
import '../models/notes.dart';  // Baris 3

class NotesDatabase {  // Baris 4
  NotesDatabase._init();  // Baris 5

  static final NotesDatabase instance = NotesDatabase._init();  // Baris 6

  final String tableName = 'notes';  // Baris 7

  static Database? _database;  // Baris 8

  Future<Database> get database async {  // Baris 9
    if (_database != null) return _database!;  // Baris 10
    _database = await _initDb('notes.db');  // Baris 11
    return _database!;  // Baris 12
  }

  Future _createDb(Database db, int version) async {  // Baris 13
    await db.execute('''  // Baris 14
      CREATE TABLE $tableName (  // Baris 15
        id INTEGER PRIMARY KEY AUTOINCREMENT,  // Baris 16
        title TEXT NOT NULL,  // Baris 17
        description TEXT NOT NULL,  // Baris 18
        time TEXT NOT NULL  // Baris 19
      )
    ''');  // Baris 20
  }

  Future<Database> _initDb(String filePath) async {  // Baris 21
    final dbPath = await getDatabasesPath();  // Baris 22
    final path = join(dbPath, filePath);  // Baris 23
    return await openDatabase(  // Baris 24
      path,  // Baris 25
      version: 1,  // Baris 26
      onCreate: _createDb,  // Baris 27
    );
  }

  Future<Note> create(Note note) async {  // Baris 28
    final db = await instance.database;  // Baris 29
    final id = await db.insert(tableName, note.toMap());  // Baris 30
    return note.copyWith(id: id);  // Baris 31
  }

  Future<Note> readNote(int id) async {  // Baris 32
    final db = await instance.database;  // Baris 33
    final maps = await db.query(tableName,  // Baris 34
        columns: ['id', 'title', 'description', 'time'],  // Baris 35
        where: 'id = ?',  // Baris 36
        whereArgs: [id]);  // Baris 37
    if (maps.isNotEmpty) {  // Baris 38
      return Note.fromMap(maps.first);  // Baris 39
    } else {  // Baris 40
      throw Exception('id $id not found');  // Baris 41
    }
  }

  Future<List<Note>> readAllNotes() async {  // Baris 42
    final db = await instance.database;  // Baris 43
    const orderBy = 'time DESC';  // Baris 44
    final result = await db.query(tableName, orderBy: orderBy);  // Baris 45

    return result.map((e) => Note.fromMap(e)).toList();  // Baris 46
  }

  Future<int> update(Note note) async {  // Baris 47
    final db = await instance.database;  // Baris 48

    return db.update(  // Baris 49
      tableName,  // Baris 50
      note.toMap(),  // Baris 51
      where: 'id = ?',  // Baris 52
      whereArgs: [note.id],  // Baris 53
    );
  }

  Future<int> delete(int id) async {  // Baris 54
    final db = await instance.database;  // Baris 55

    return await db.delete(  // Baris 56
      tableName,  // Baris 57
      where: 'id = ?',  // Baris 58
      whereArgs: [id],  // Baris 59
    );
  }

  Future close() async {  // Baris 60
    final db = await instance.database;
    db.close();  // Baris 61
  }
}
