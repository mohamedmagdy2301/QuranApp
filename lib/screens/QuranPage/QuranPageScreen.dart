import 'package:flutter/material.dart';
import 'package:quran/screens/QuranPage/JuzTapView.dart';
import 'package:quran/screens/QuranPage/PageTapView.dart';
import 'package:quran/screens/QuranPage/SuraListView.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        drawer: const Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
        appBar: AppBar(
          title: const Text("القرآن الكريم",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_sharp,
              ),
            ),
          ],
          toolbarHeight: 90,
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 180, 100, 14),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            tabs: <Widget>[
              Tab(
                text: "الجزء",
              ),
              Tab(
                text: "السور",
              ),
              Tab(
                text: "الصفحة",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            JuzTapView(),
            const SuraListViewWidget(),
            PageTapView(),
          ],
        ),
      ),
    );
  }
}
       //  Scaffold(
        //     drawer:   Drawer(
        //       child: Center(
        //         child: Text("Drawer"),
        //       ),
        //     ),
        //     appBar: AppBar(
        //       title:   Text("AL Quran"),
        //       actions: [
        //         IconButton(
        //           onPressed: () {},
        //           icon:   Icon(
        //             Icons.search_sharp,
        //           ),
        //         ),
        //       ],
        //     ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         margin:   EdgeInsets.all(10),
        //         child:   Text(
        //           "Last Read",
        //           style: TextStyle(
        //             fontSize: 19,
        //             fontWeight: FontWeight.w200,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         margin:   EdgeInsets.all(5),
        //         height: 80,
        //         child: ListView(
        //           shrinkWrap: true,
        //           scrollDirection: Axis.horizontal,
        //           children: [
        //             Container(
        //               width: 120,
        //               margin:   EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 5),
        //               padding:   EdgeInsets.symmetric(
        //                   horizontal: 15, vertical: 10),
        //               decoration:   BoxDecoration(
        //                   color: Color.fromARGB(255, 249, 233, 205),
        //                   borderRadius: BorderRadius.all(Radius.circular(13))),
        //               child:   Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Al-Sura",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: Color.fromARGB(255, 59, 47, 31),
        //                     ),
        //                   ),
        //                   Text(
        //                     " Verse 287",
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Color.fromARGB(255, 172, 146, 110),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               width: 120,
        //               margin:   EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 5),
        //               padding:   EdgeInsets.symmetric(
        //                   horizontal: 15, vertical: 10),
        //               decoration:   BoxDecoration(
        //                   color: Color.fromARGB(255, 249, 233, 205),
        //                   borderRadius: BorderRadius.all(Radius.circular(13))),
        //               child:   Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Al-Sura",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: Color.fromARGB(255, 59, 47, 31),
        //                     ),
        //                   ),
        //                   Text(
        //                     " Verse 287",
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Color.fromARGB(255, 172, 146, 110),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               width: 120,
        //               margin:   EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 5),
        //               padding:   EdgeInsets.symmetric(
        //                   horizontal: 15, vertical: 10),
        //               decoration:   BoxDecoration(
        //                   color: Color.fromARGB(255, 249, 233, 205),
        //                   borderRadius: BorderRadius.all(Radius.circular(13))),
        //               child:   Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Al-Sura",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: Color.fromARGB(255, 59, 47, 31),
        //                     ),
        //                   ),
        //                   Text(
        //                     " Verse 287",
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Color.fromARGB(255, 172, 146, 110),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               width: 120,
        //               margin:   EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 5),
        //               padding:   EdgeInsets.symmetric(
        //                   horizontal: 15, vertical: 10),
        //               decoration:   BoxDecoration(
        //                   color: Color.fromARGB(255, 249, 233, 205),
        //                   borderRadius: BorderRadius.all(Radius.circular(13))),
        //               child:   Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Al-Sura",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: Color.fromARGB(255, 59, 47, 31),
        //                     ),
        //                   ),
        //                   Text(
        //                     " Verse 287",
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Color.fromARGB(255, 172, 146, 110),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               width: 120,
        //               margin:   EdgeInsets.symmetric(
        //                   horizontal: 10, vertical: 5),
        //               padding:   EdgeInsets.symmetric(
        //                   horizontal: 15, vertical: 10),
        //               decoration:   BoxDecoration(
        //                   color: Color.fromARGB(255, 249, 233, 205),
        //                   borderRadius: BorderRadius.all(Radius.circular(13))),
        //               child:   Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Al-Sura",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: Color.fromARGB(255, 59, 47, 31),
        //                     ),
        //                   ),
        //                   Text(
        //                     " Verse 287",
        //                     style: TextStyle(
        //                       fontSize: 10,
        //                       color: Color.fromARGB(255, 172, 146, 110),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
