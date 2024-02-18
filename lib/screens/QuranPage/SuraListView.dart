import 'package:flutter/material.dart';
import 'package:quran/Widgets/QuranPageWidgets/NumberWidget.dart';
import 'package:quran/database/DataModel.dart';
import 'package:quran/screens/QuranPage/AyahPage.dart';

class SuraListViewWidget extends StatelessWidget {
  const SuraListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quranDataBase.length, //114
      itemBuilder: (context, index) {
        var surah = quranDataBase[index];
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => AyahScreens(suraNumber: surah.id),
                  ),
                );
              },
              child: Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NumberWidget(surah: surah),
                    const SizedBox(width: 19),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          surah.transliteration,
                          style: const TextStyle(
                            fontSize: 20,
                           
                          ),
                        ),
                        Text(
                          "${surah.total_verses} Verse | ${surah.type}",
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 205, 177, 148),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      surah.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 0.2,
              height: 0,
            )
          ],
        );
      },
    );
  }
}
