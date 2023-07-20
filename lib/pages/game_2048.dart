import 'package:crltsmrtnz/pages/porfolio/game/2048/game_page.dart';
import 'package:flutter/material.dart';

import 'package:crltsmrtnz/pages/nav_bar.dart';

class GameVeiteCuarentaOcho extends StatelessWidget {
  const GameVeiteCuarentaOcho({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("2048 Game"),
        ),
        body: SafeArea(
          child: Center(
            child: Flutter2048(),
          ),
        ),
      );
}
