import 'package:crltsmrtnz/pages/porfolio/game/2048/pages/game_page.dart';
import 'package:crltsmrtnz/pages/porfolio/game/2048_swapping/main2048.dart';
import 'package:flutter/material.dart';

import 'package:crltsmrtnz/pages/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Game 2048"),
        ),
        body: SafeArea(
          child: Center(
            // Este Widget de texto usará la fuente RobotoMono
            child: Flutter2048(),
            // Text(
            //   'CrltsMrtnz migrate',
            // ),
          ),
        ),
      );
}
