import 'package:flutter/material.dart';
import 'package:quran/database/DataModel.dart';
import 'package:quran/main.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
    required this.surah,
  });

  final QuranChapter surah;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 28,
      child: Stack(
        children: [
          const Positioned(
            child: ImageIcon(
              size: 48,
              color: Color.fromARGB(255, 205, 177, 148),
              AssetImage(
                "asset/Image/Sura.png",
              ),
            ),
          ),
          surah.id <= 9
              ? Positioned(
                  left: 9,
                  top: 2,
                  child: Text(
                    convertNumberToArabic(surah.id.toString()),
                    // surah.id.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Noto_Nastaliq_Urdu',
                      color: Color.fromARGB(255, 192, 147, 100),
                    ),
                  ),
                )
              : surah.id <= 99 && surah.id >= 10
                  ? Positioned(
                      left: 5.3,
                      top: 4,
                      child: Text(
                        convertNumberToArabic(surah.id.toString()),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Noto_Nastaliq_Urdu',
                          color: Color.fromARGB(255, 192, 147, 100),
                        ),
                      ),
                    )
                  : Positioned(
                      left: 4,
                      top: 7,
                      child: Text(
                        convertNumberToArabic(surah.id.toString()),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Noto_Nastaliq_Urdu',
                          color: Color.fromARGB(255, 192, 147, 100),
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}
