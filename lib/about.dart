import 'package:flutter/material.dart';

import 'nav_bar.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("About me"),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'A b o u t',
          ),
        ),
      );
}
