import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porfolio/pages/home.dart';

void main() {
  runApp(const MyApp());
}

Color c = const Color(0xFF42A5F5);
Color backgrounGray = const Color(0xff171d49);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crlts Mrtnz',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(
          Theme.of(context).textTheme,
        ),
        //brightness: Brightness.dark,
        primaryColor: Colors.red[800],
      ),
      home: const Home(),
    );
  }
}
