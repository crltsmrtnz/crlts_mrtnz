import 'package:flutter/material.dart';

import 'package:porfolio/pages/nav_bar.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("About me"),
        ),
        body: const Center(
          // Este Widget de texto usará la fuente RobotoMono
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage('assets/img/CrltsMrtnz.png'),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "CrltsMrtnz@gmail.com",
                style: TextStyle(fontSize: 24, color: Color(0xFF1434D7)),
              ),
              Text(
                "+595972264992",
                style: TextStyle(fontSize: 24, color: Color(0xFF1434D7)),
              ),
              Text(
                "https://www.linkedin.com/in/crltsmrtnz/",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Color(0xFF1434D7)),
              )
            ],
          ),
        ),
      );
}
