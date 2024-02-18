import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quran/screens/HomePage/Page4.dart';
import 'package:quran/screens/QuranPage/QuranPageScreen.dart';
import 'package:quran/screens/HomePage/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; //default index

  final List<Widget> _widgetOptions = [
    const QuranScreen(),
    // AudioPlayerScreen(),
    Page3Screen(),
    const Page4Screen(suraNumber: 1),
    const Page4Screen(suraNumber: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: const Color.fromARGB(255, 143, 97, 5),
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.top,
      

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'القرآن',
            icon: Icons.menu_book_sharp,
          ),
          CustomBottomBarItems(
            label: 'Page2',
            icon: Icons.account_box_outlined,
          ),
          CustomBottomBarItems(
              label: 'Page3', icon: Icons.calendar_today_outlined),
          CustomBottomBarItems(
            label: 'Page4',
            icon: Icons.card_giftcard_rounded,
          ),
        ],
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return   Scaffold(
  //     body: Center(
  //       child: SizedBox(
  //         child: Text("Home"),
  //       ),
  //     ),
  //   );
  // }
}
