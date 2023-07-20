import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
// ignore: unused_import
import 'dart:async';
// ignore: unused_import
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
// ignore: unused_import
import 'game.dart';
// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';
// ignore: unused_import
import 'tile_widget.dart';
import 'flutter_2048_widget.dart';
import 'menu_screen.dart';
import 'about_screen.dart';

// https://github.com/anuranBarman/2048

void main() {
  runApp(MaterialApp(
    // home: Flutter2048(),
    // home: MenuScreen(),
    initialRoute: '/',
    routes: {
      '/': (context) => const MenuScreen(),
      '/game': (context) => const Flutter2048(),
      // '/settings': (context) => SettingsScreen(),
      '/about': (context) => const AboutScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class Flutter2048 extends StatefulWidget {
  const Flutter2048({super.key});

  @override
  Flutter2048State createState() => Flutter2048State();
}
