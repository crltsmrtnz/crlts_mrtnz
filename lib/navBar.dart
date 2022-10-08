import 'package:flutter/material.dart';
import 'package:porfolio/home.dart';
import 'package:porfolio/about.dart';
import 'package:porfolio/Porfolio.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(context)],
        ),
      ));
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16, //vertical Spacing
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              )),
            ),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("About me"),
                onTap: () {
                  // close navigations menu
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const About(),
                  ));
                }),
            const Divider(color: Colors.black54),
            ListTile(
                leading: const Icon(Icons.work),
                title: const Text("Porfolio"),
                onTap: () {
                  // close navigations menu
                  Navigator.pop(context);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Porfolio(),
                  ));
                })
          ],
        ),
      );
}
