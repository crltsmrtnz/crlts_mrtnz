import 'package:flutter/material.dart';
import 'package:porfolio/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crlts Mrtnz',
      theme: ThemeData(
        textTheme: GoogleFonts.spaceMonoTextTheme(
          Theme.of(context).textTheme,
        ),

        //brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: const Home(),
    );
  }
}
