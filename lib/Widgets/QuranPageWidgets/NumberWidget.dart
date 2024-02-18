import 'package:flutter/material.dart';
import 'package:quran/database/DataModel.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
    required this.surah,
  });

  final QuranChapter surah;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 55,
      child: Stack(
        children: [
          const Positioned(
            child: ImageIcon(
              size: 80,
              color: Color.fromARGB(255, 205, 177, 148),
              AssetImage(
                "asset/Image/Sura.png",
              ),
            ),
          ),
          surah.id <= 9
              ? Positioned(
                  left: 20,
                  top: 17,
                  child: Text(
                    surah.id.toString(),
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 205, 177, 148),
                    ),
                  ),
                )
              : surah.id <= 99 && surah.id >= 10
                  ? Positioned(
                      left: 15.5,
                      top: 20,
                      child: Text(
                        surah.id.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 205, 177, 148),
                        ),
                      ),
                    )
                  : Positioned(
                      left: 12.5,
                      top: 22,
                      child: Text(
                        surah.id.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 205, 177, 148),
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}
