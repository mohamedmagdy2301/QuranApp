// ignore_for_file: use_key_in_widget_ ructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class Page4Screen extends StatelessWidget {
  final int suraNumber;
  const Page4Screen({super.key, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // Center(
    //   child: FutureBuilder(
    //     future: _ayahService.getAyahData(suraNumber),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const CircularProgressIndicator();
    //       } else if (snapshot.hasError) {
    //         return Text('Errorr: ${snapshot.error}');
    //       } else if (!snapshot.hasData) {
    //         return const Text('No data available');
    //       } else {
    //         var ayahData = snapshot.data;
    //         return Scaffold(
    //           drawer: const Drawer(
    //             child: Text("Drawer"),
    //           ),
    //           appBar: AppBar(
    //             title: Text(
    //               "${snapshot.data?['data']['name']}",
    //               style: const TextStyle(
    //                 fontSize: 38,
    //               ),
    //             ),
    //           ),
    //           body: SingleChildScrollView(
    //             child: Column(
    //               children: [
    //                 const SizedBox(height: 20),
    //                 Center(
    //                   child: Text(
    //                     AlQuran.getBismillah.unicode,
    //                     style: const TextStyle(
    //                       locale: Locale("ar"),
    //                       fontSize: 33,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                 ),
    //                 const SizedBox(height: 25),
    //                 ListView.builder(
    //                   shrinkWrap: true,
    //                   physics: const NeverScrollableScrollPhysics(),
    //                   itemCount: snapshot.data?['data']['numberOfAyahs'],
    //                   itemBuilder: (context, index) {
    //                     return Column(
    //                       children: [
    //                         Container(
    //                           color: ayahData[index]['text'].contains("۞")
    //                               ? const Color.fromARGB(255, 231, 221, 211)
    //                               : Colors.white,
    //                           padding: const EdgeInsets.symmetric(
    //                               horizontal: 25, vertical: 22),
    //                           // margin:   EdgeInsets.symmetric(vertical: 5),
    //                           child: Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               Text(
    //                                 ayahData[index]['numberInSurah'].toString(),
    //                                 style: const TextStyle(
    //                                   fontSize: 25,
    //                                   color: Color.fromARGB(255, 205, 177, 148),
    //                                 ),
    //                               ),
    //                               const SizedBox(width: 30),
    //                               Flexible(
    //                                 child: Text(
    //                                   '${ayahData[index]['text']}',
    //                                   style: const TextStyle(
    //                                     fontSize: 20,
    //                                     locale: Locale("ar"),
    //                                   ),
    //                                   textAlign: TextAlign.start,
    //                                   textDirection: TextDirection.rtl,
    //                                   maxLines: null,
    //                                   overflow: TextOverflow.visible,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         const Divider(
    //                           thickness: 0.2,
    //                           height: 0,
    //                         )
    //                       ],
    //                     );
    //                   },
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       }
    //     },
    //   ),
    // );
  }
}
