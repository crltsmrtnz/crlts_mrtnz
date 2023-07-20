import 'package:flutter/material.dart';

import 'package:crltsmrtnz/pages/nav_bar.dart';

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
