import 'package:flutter/material.dart';

import 'package:porfolio/pages/nav_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("App"),
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'App',
          ),
        ),
      );
}
