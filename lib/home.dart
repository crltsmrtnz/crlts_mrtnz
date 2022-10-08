import 'package:flutter/material.dart';
import 'package:porfolio/home.dart';

import 'navBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.green,
        ),
      );
}
