import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Porfolio extends StatelessWidget {
  const Porfolio({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Porfolio"),
          backgroundColor: Colors.green,
        ),
      );
}
