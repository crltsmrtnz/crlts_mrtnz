import 'package:flutter/material.dart';
import 'package:porfolio/about.dart';

import 'navBar.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("About me"),
          backgroundColor: Colors.green,
        ),
      );
}
