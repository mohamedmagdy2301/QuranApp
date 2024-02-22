class SuraAudio {
  String suraAudio;

  SuraAudio({
    required this.suraAudio,
  });

  factory SuraAudio.fromJson(Map<String, dynamic> json) => SuraAudio(
        suraAudio: json['attachments'][0]['url'],
      );
}
