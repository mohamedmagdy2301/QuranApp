import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:quran/Service/AyahService.dart';
import 'package:quran/Widgets/QuranPageWidgets/AyahListView.dart';
import 'package:quran/database/DataModel.dart';

class AyahScreens extends StatefulWidget {
  final int suraNumber;

  const AyahScreens({super.key, required this.suraNumber});

  @override
  State<AyahScreens> createState() => _AyahScreensState();
}

class _AyahScreensState extends State<AyahScreens> {
  final AyahService _ayahService = AyahService();
  bool isPlaying = true;
  AudioPlayer audioPlayerSurah = AudioPlayer();

  @override
  // void initState() {
  //   super.initState();
  //   audioPlayerSurah.onPlayerComplete.listen((event) {
  //     setState(() {
  //       isPlaying = false;
  //     });
  //   });
  // }

  @override
  void dispose() {
    audioPlayerSurah.dispose();
    super.dispose();
  }

  String selectedValue = 'mahermuaiqly';
// The list of options in the dropdown menu
  final List<DropdownMenuItem<String>> _dropdownItems = [
    const DropdownMenuItem(value: 'mahermuaiqly', child: Text("ماهر المعيقلي")),
    const DropdownMenuItem(
        value: 'abdulsamad', child: Text('عبدالباسط عبدالصمد')),
    const DropdownMenuItem(
        value: 'abdurrahmaansudais', child: Text('عبدالرحمن السديس')),
    const DropdownMenuItem(value: 'alafasy', child: Text('مشاري العفاسي')),
    const DropdownMenuItem(
        value: 'ahmedajamy', child: Text('أحمد بن علي العجمي')),
    const DropdownMenuItem(value: 'husary', child: Text("محمود خليل الحصري")),
    const DropdownMenuItem(
        value: 'minshawi', child: Text("محمد صديق المنشاوي")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await audioPlayerSurah.play(UrlSource(
          //     ));
          print('========playing AudioSura==========!');
        },
        // !isPlaying
        //     ? () {
        //         if (isPlaying) {
        //           audioPlayerSurah.pause();
        //         } else {
        //           audioPlayerSurah.play(UrlSource(
        //               "https://cdn.islamic.network/quran/audio-surah/128/ar.alafasy/1.mp3"));
        //           print('========Ui playing AudioSura==========!');
        //         }
        //         setState(() {
        //           isPlaying = !isPlaying;
        //         });
        //       }
        //     : () {
        //         print('========No Ui playing AudioSura==========!');
        //       },
        backgroundColor: const Color.fromARGB(255, 180, 100, 14),
        foregroundColor: Colors.white,
        mini: true,
        shape: const CircleBorder(),
        child: const Icon(Icons.play_arrow),
      ),
      appBar: AppBar(
        // leading:  IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //     AudioPlayer().stop();
        //   },
        //   icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        // ),
        foregroundColor: Colors.white,
        // backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(255, 180, 100, 14),
        centerTitle: true,
        title: Text(
          quranDataBase[widget.suraNumber - 1].name,
          style: const TextStyle(
            fontFamily: 'Noto_Nastaliq_Urdu',
            locale: Locale("ar"),
          ),
        ),
        actions: [
          DropdownButton<String>(
            dropdownColor: const Color.fromARGB(255, 180, 100, 14),
            borderRadius: BorderRadius.circular(20),
            elevation: 0,
            hint: const Icon(Icons.person, color: Colors.white),
            icon: const Icon(Icons.person, color: Colors.white),
            style: const TextStyle(color: Colors.white),
            autofocus: true,
            value: selectedValue,
            items: _dropdownItems,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: const Color.fromARGB(255, 180, 100, 14),

              // color: const Color.fromARGB(255, 0, 0, 0),
              width: double.maxFinite,
              height: 90,
              padding: const EdgeInsets.only(top: 16),
              child: const Text(
                "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Noto_Nastaliq_Urdu',
                  locale: Locale("ar"),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return FutureBuilder(
                  future: _ayahService.getAyahData(
                      widget.suraNumber, selectedValue),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Error: ${snapshot.error}'),
                      ));
                    } else if (!snapshot.hasData) {
                      return const Center(child: Text('No data available'));
                    } else {
                      return AyahListViewWidget(
                        ayahAudioData: snapshot.data ?? [],
                        suraNumber: widget.suraNumber,
                        verses: quranDataBase[widget.suraNumber - 1].verses,
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
