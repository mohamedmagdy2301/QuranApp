// ignore_for_file: file_names

import 'package:quran/database/QuranText.dart';

// Define the QuranChapter class
class QuranChapter {
  int id;
  String name;
  String transliteration;
  String type;
  int total_verses;
  List<QuranVerse> verses;

  // Constructor
  QuranChapter({
    required this.id,
    required this.name,
    required this.transliteration,
    required this.type,
    required this.total_verses,
    required this.verses,
  });

  // Convert from JSON to QuranChapter object
  factory QuranChapter.fromJson(Map<String, dynamic> json) {
    return QuranChapter(
      id: json['id'],
      name: json['name'],
      transliteration: json['transliteration'],
      type: json['type'],
      total_verses: json['total_verses'],
      verses:
          List.from(json['verses']).map((e) => QuranVerse.fromJson(e)).toList(),
    );
  }

  // Convert from QuranChapter object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'transliteration': transliteration,
      'type': type,
      'total_verses': total_verses,
      'verses': verses.map((e) => e.toJson()).toList(),
    };
  }
}

// Define the QuranVerse class
class QuranVerse {
  int id;
  String text;

  // Constructor
  QuranVerse({
    required this.id,
    required this.text,
  });

  // Convert from JSON to QuranVerse object
  factory QuranVerse.fromJson(Map<String, dynamic> json) {
    return QuranVerse(
      id: json['id'],
      text: json['text'],
    );
  }

  // Convert from QuranVerse object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
    };
  }
}

// Create a list of QuranChapter objects from the JSON list
List<QuranChapter> quranDataBase =
    List.from(QuranDataBase).map((e) => QuranChapter.fromJson(e)).toList();
