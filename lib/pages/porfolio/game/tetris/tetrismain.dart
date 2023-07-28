import 'package:crltsmrtnz/pages/porfolio/game/tetris/tetris.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppTetris());
}

class AppTetris extends StatelessWidget {
  const AppTetris({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(brightness: Brightness.dark).copyWith(
          scaffoldBackgroundColor: Colors.black,
          dividerColor: const Color(0xFF2F2F2F),
          dividerTheme: const DividerThemeData(thickness: 10),
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const Tetris(),
      );
}
