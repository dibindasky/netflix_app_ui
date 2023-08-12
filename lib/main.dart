import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/view/main_screen/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          colorScheme: const ColorScheme.dark()),
      home: ScreenMain(),
      // home: MyWidget(),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(color: Colors.amber,
//           height: double.infinity,
//           width: double.infinity,
//           child: Column(children: [
//             Flexible(
//                 child: Container(
//                   height: 20,
//               color: Colors.blue,
//               child: Text('flexible'),
//             )),
//                 Flexible(
//                       flex: 1,
//                 child: Container(
//               color: Colors.red,
//               child: Text('flexible'),
//             ))        
//           ]),
//         ),
//       ),
//     );
//   }
// }
