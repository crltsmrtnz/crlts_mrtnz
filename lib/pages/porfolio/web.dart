import 'package:flutter/material.dart';

import 'package:porfolio/pages/nav_bar.dart';

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Web"),
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'Web',
          ),
        ),
      );
}
