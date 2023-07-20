import 'package:flutter/material.dart';

import 'package:crltsmrtnz/pages/nav_bar.dart';

class Porfolio extends StatelessWidget {
  const Porfolio({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Porfolio"),
          centerTitle: true,
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'P o r f o l i o',
          ),
        ),
      );
}
