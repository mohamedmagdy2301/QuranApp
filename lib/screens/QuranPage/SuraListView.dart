import 'package:flutter/material.dart';
import 'package:quran/Widgets/QuranPageWidgets/NumberWidget.dart';
import 'package:quran/database/DataModel.dart';
import 'package:quran/main.dart';
import 'package:quran/screens/QuranPage/AyahPage.dart';

class SuraListViewWidget extends StatelessWidget {
  const SuraListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quranDataBase.length, //114
      itemBuilder: (context, index) {
        var surah = quranDataBase[index];
        return GestureDetector(
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
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      surah.type == "meccan" ? "مكية" : "مدنية",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        locale: Locale("ar"),
                        fontFamily: "Amiri",
                        color: Color.fromARGB(255, 205, 177, 148),
                      ),
                    ),
                    Text(
                      "${convertNumberToArabic(surah.total_verses.toString())} ايات",
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'Noto_Nastaliq_Urdu',
                        locale: Locale("ar"),
                        color: Color.fromARGB(255, 205, 177, 148),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(width: 20),
                const Spacer(),
                Text(
                  surah.name,
                  style: const TextStyle(fontSize: 20),
                ),
                NumberWidget(surah: surah)
              ],
            ),
          ),
        );
      },
    );
  }
}
