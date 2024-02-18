import 'package:flutter/material.dart';
import 'package:quran/screens/HomePage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //     colorScheme: ColorScheme.fromSeed(
        //         seedColor:   Color.fromARGB(255, 204, 129, 1)),
        //     useMaterial3: true),
        home: HomeScreen());
  }
}
