import 'package:flutter/material.dart';

class AvatarDetail extends StatelessWidget {
  const AvatarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carlos Martínez'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset('assets/img/CrltsMrtnz.png'),
          ),
        ),
      ),
    );
  }
}
