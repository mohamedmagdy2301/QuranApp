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

/// arabicDigits map of arabic digit representation
const Map<String, String> arabicDigits = <String, String>{
  '0': '\u0660',
  '1': '\u0661',
  '2': '\u0662',
  '3': '\u0663',
  '4': '\u0664',
  '5': '\u0665',
  '6': '\u0666',
  '7': '\u0667',
  '8': '\u0668',
  '9': '\u0669',
};

/// convertNumberToArabic converts number to arabic representation
String convertNumberToArabic(String input) {
  StringBuffer sb = StringBuffer();
  for (int i = 0; i < input.length; i++) {
    sb.write(arabicDigits[input[i]] ?? input[i]);
  }
  return sb.toString();
}
