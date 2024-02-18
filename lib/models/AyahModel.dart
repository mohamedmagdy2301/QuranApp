// ignore_for_file: file_names

class AyahModel {
  // String name;
  // int numberInSurah;
  // String audio;
  String audio;
  // String text;
  AyahModel({
    // required this.name,
    // required this.numberInSurah,
    // required this.audio,
    // required this.text,
    required this.audio,
  });

  factory AyahModel.fromJson(Map<String, dynamic> json) {
    return AyahModel(
      // name: json['name'],
      // numberInSurah: json['numberInSurah'],
      // audio: json['audio'],
      // text: json['text'],
      audio    : json['audio'],
    );
  }
}







// String englishName;
// String revelationType;
// String numberOfAyahs;
// required this.numberOfAyahs,
// required this.englishName,
// required this.revelationType,
// englishName: json['englishName'],
// revelationType: json['revelationType'],
// numberOfAyahs: json['numberOfAyahs'],