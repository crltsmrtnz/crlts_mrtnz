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
        body: Image.asset('assets/img/CrltsMrtnz.png'),
      );
}
