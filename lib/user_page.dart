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

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(20.0),
        child: const MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.asset(
            'assets/img/CrltsMrtnz.png',
            width: 200.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
