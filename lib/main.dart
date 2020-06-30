import 'package:cv_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CvApp());
}

class CvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.montserratTextTheme(),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: HomePage(),
    );
  }
}