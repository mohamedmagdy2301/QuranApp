// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   AudioPlayer audioPlayer = AudioPlayer();
//   bool isPlaying = false;

//   @override
//   void initState() {
//     super.initState();

//     // Set up a listener for player completion
//     audioPlayer.onPlayerComplete.listen((event) {
//       setState(() {
//         isPlaying = false;
//       });
//     });
//   }

//   void playPause() {
//     if (isPlaying) {
//       audioPlayer.pause();
//     } else {
//       audioPlayer.play(
//         UrlSource(
//           "https://cdn.islamic.network/quran/audio/128/ar.alafasy/8.mp3"
//         ));
//     }

//     setState(() {
//       isPlaying = !isPlaying;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Audio Player Example'),
//         ),
//         body: Center(
//           child: GestureDetector(
//             onTap: isPlaying
//                 ? null
//                 : () {
//                     print('Tapped!');
//                   },
//             child: Container(
//               width: 200,
//               height: 100,
//               color: isPlaying ? Colors.grey : Colors.blue,
//               child: Center(
//                 child: Text(
//                   isPlaying ? 'Disabled' : 'Tap me!',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             playPause();
//           },
//           child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
//         ),
//       ),
//     );
//   }
// }










  // onTap: !isPlaying
  //                                       ? () {
  //                                           if (isPlaying) {
  //                                             audioPlayer.pause();
  //                                           } else {
  //                                             audioPlayer.play(UrlSource(
  //                                                 "${ayahData[index]['audio']}"));
  //                                           }
  //                                           setState(() {
  //                                             isPlaying = !isPlaying;
  //                                           });
                                         
  //                                         }
                                          
  //                                       : () {
  //                                           print('=========================!');
  //                                         },