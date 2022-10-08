import 'package:flutter/material.dart';
import 'package:porfolio/about.dart';

import 'navBar.dart';

class Porfolio extends StatelessWidget {
  const Porfolio({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Porfolio"),
          backgroundColor: Colors.green,
        ),
      );
}
