import 'package:flutter/material.dart';

import 'package:porfolio/pages/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: const SafeArea(
          child: Center(
            // Este Widget de texto usará la fuente RobotoMono
            child: Text(
              'OK firebase conect. Contact channel in readme',
            ),
          ),
        ),
      );
}
