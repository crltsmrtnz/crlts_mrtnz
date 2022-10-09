import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'H o m e',
          ),
        ),
      );
}
