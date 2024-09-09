import 'dart:convert';  // Baris 1

class Note {  // Baris 2
  final int? id;  // Baris 3
  final String title;  // Baris 4
  final String description;  // Baris 5
  final DateTime time;  // Baris 6

  Note({  // Baris 7
    this.id,  // Baris 8
    required this.title,  // Baris 9
    required this.description,  // Baris 10
    required this.time,  // Baris 11
  });

  Note copyWith({  // Baris 12
    int? id,  // Baris 13
    String? title,  // Baris 14
    String? description,  // Baris 15
    DateTime? time,  // Baris 16
  }) {
    return Note(  // Baris 17
      id: id ?? this.id,  // Baris 18
      title: title ?? this.title,  // Baris 19
      description: description ?? this.description,  // Baris 20
      time: time ?? this.time,  // Baris 21
    );
  }

  Map<String, dynamic> toMap() {  // Baris 22
    return <String, dynamic>{  // Baris 23
      'id': id,  // Baris 24
      'title': title,  // Baris 25
      'description': description,  // Baris 26
      'time': time.millisecondsSinceEpoch,  // Baris 27
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {  // Baris 28
    return Note(  // Baris 29
      id: map['id'] != null ? map['id'] as int : null,  // Baris 30
      title: map['title'] as String,  // Baris 31
      description: map['description'] as String,  // Baris 32
      time: DateTime.fromMillisecondsSinceEpoch(int.parse(map['time'])),  // Baris 33
    );
  }

  String toJson() => json.encode(toMap());  // Baris 34

  factory Note.fromJson(String source) =>  // Baris 35
      Note.fromMap(json.decode(source) as Map<String, dynamic>);  // Baris 36
}
