import 'package:flutter/material.dart';

import 'package:porfolio/pages/nav_bar.dart';

class EmailTemplates extends StatelessWidget {
  const EmailTemplates({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("Email Templates"),
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Text(
            'Email Templates',
          ),
        ),
      );
}
