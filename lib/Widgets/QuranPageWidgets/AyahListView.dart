// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/database/DataModel.dart';
import 'package:quran/models/AyahModel.dart';

class AyahListViewWidget extends StatefulWidget {
  final int suraNumber;

  final List<AyahModel> ayahAudioData;
  // final List<QuranChapter> chapters;
  final List<QuranVerse> verses;

  const AyahListViewWidget({
    super.key,
    required this.suraNumber,
    required this.ayahAudioData,
    required this.verses,
  });

  @override
  State<AyahListViewWidget> createState() => _AyahListViewWidgetState();
}

class _AyahListViewWidgetState extends State<AyahListViewWidget> {
  bool isPlaying = false;
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }
  
   @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.verses.length,
      itemBuilder: (context, index) {
        return Container(
          // color: widget.verses[index].text.contains("۞")
          //     ? const Color.fromARGB(255, 231, 221, 211)
          //     : const Color.fromARGB(255, 0, 0, 0),
          color: widget.verses[index].text.contains("۞")
              ? const Color.fromARGB(255, 231, 221, 211)
              : Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: !isPlaying
                      ? () {
                          if (isPlaying) {
                            audioPlayer.pause();
                          } else {
                            audioPlayer.play(
                                UrlSource(widget.ayahAudioData[index].audio));
                            print('========playing AudioAyah==========!');
                          }

                          setState(() {
                            isPlaying = !isPlaying;
                          });
                        }
                      : () {
                          print('========No Ui playing AudioAyah==========!');
                        },
                  icon: const Icon(
                    CupertinoIcons.play_circle,
                    size: 35,
                    color: Color.fromARGB(255, 205, 177, 148),
                  )),
              const SizedBox(width: 30),
              Flexible(
                child: Text(
                  '${widget.verses[index].text} (${widget.verses[index].id})',
                  style: const TextStyle(
                    height: 2.2,
                    fontSize: 20,
                    // color: Colors.white,
                    fontFamily: 'Amiri',
                    locale: Locale("ar"),
                  ),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  maxLines: null,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
//  const Divider(
//                 thickness: 0.5,
//                 height: 0,
// )
