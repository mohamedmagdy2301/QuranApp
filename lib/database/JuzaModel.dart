// Define model classes
import 'dart:convert';

class Surah {
  final String index;
  final SurahInfo start;
  final SurahInfo end;

  Surah({required this.index, required this.start, required this.end});

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      index: json['index'],
      start: SurahInfo.fromJson(json['start']),
      end: SurahInfo.fromJson(json['end']),
    );    
  }
}

class SurahInfo {
  final String index;
  final String verse;
  final String name;
  final String nameAr;

  SurahInfo(
      {required this.index,
      required this.verse,
      required this.name,
      required this.nameAr});

  factory SurahInfo.fromJson(Map<String, dynamic> json) {
    return SurahInfo(
      index: json['index'],
      verse: json['verse'],
      name: json['name'],
      nameAr: json['nameAr'],
    );
  }
}

// Parse JSON data
List<Surah> parseSurahs(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Surah>((json) => Surah.fromJson(json)).toList();
}
