// // // Import the necessary packages
// // import 'package:flutter/material.dart';
// // import 'package:quran/database/DataModel.dart';

// // // Define the QuranVerseListWidget that displays a list of QuranVerse objects
// // class QuranVerseListWidget extends StatelessWidget {
// //   final List<QuranVerse> verses;

// //   // Constructor
// //   const QuranVerseListWidget({super.key, required this.verses});

// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //       itemCount: verses.length,
// //       itemBuilder: (context, index) {
// //     return Text(
// //       verses[index].text,
// //       style: const TextStyle(
// //         fontSize: 18,
// //       ),
// //       textAlign: TextAlign.right,
// //     );
// //       },
// //     );
// //   }
// // }

// // // Define the QuranChapterWidget that displays a single QuranChapter object
// // class QuranChapterWidget extends StatelessWidget {
// //   final QuranChapter chapter;

// //   // Constructor
// //   const QuranChapterWidget({super.key, required this.chapter});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       child: Column(
// //         children: [
// //           Text(
// //             chapter.name,
// //             style: const TextStyle(
// //               fontSize: 24,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //           Text(
// //             chapter.transliteration,
// //             style: const TextStyle(
// //               fontSize: 20,
// //               fontStyle: FontStyle.italic,
// //             ),
// //           ),
// //           Text(
// //             chapter.type,
// //             style: const TextStyle(
// //               fontSize: 16,
// //               color: Colors.grey,
// //             ),
// //           ),
// //           Text(
// //             'Total verses: ${chapter.total_verses}',
// //             style: const TextStyle(
// //               fontSize: 16,
// //               color: Colors.grey,
// //             ),
// //           ),
// //           Expanded(
// //             child: QuranVerseListWidget(verses: quranDataBase[index].verses),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // // Define the MyApp widget that is the root of the app
// // class MyApp extends StatelessWidget {
// //   final List<QuranChapter>  ;

// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //

// //         // body:   GridView.builder(
// //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: 2,
// //       ),
// //       itemCount: chapters.length,
// //       itemBuilder: (context, index) {
// //         return QuranChapterWidget(chapter: quranDataBase[index]);
// //       },
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// import 'package:quran/database/JuzaModel.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Surahs',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const SurahListScreen(),
//     );
//   }
// }

// class SurahListScreen extends StatelessWidget {
//   const SurahListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Surahs'),
//       ),
//       body: FutureBuilder(
//         future: DefaultAssetBundle.of(context).loadString('database/juza.json'),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List<Surah> surahs = parseSurahs(snapshot.data.toString());
//             return ListView.builder(
//               itemCount: surahs.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(
//                       '${surahs[index].start.name} - ${surahs[index].end.name}'),
//                   subtitle: Text(
//                       '${surahs[index].start.nameAr} - ${surahs[index].end.nameAr}'),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return const Center(
//               child: Text('Error loading data'),
//             );
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
