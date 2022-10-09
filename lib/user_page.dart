import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carlos Martínez",
        ),
      ),
      body: Center(
        // Este Widget de texto usará la fuente RobotoMono
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/img/CrltsMrtnz.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('crltsmrtnz@gmail.com'),
            ),
          ],
        ),
      ));
}
