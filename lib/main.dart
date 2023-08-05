import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/main_screen/screen_main.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.montserrat().fontFamily,
      colorScheme: const ColorScheme.dark()
      ),
      home: ScreenMain(),
    );
  }
}