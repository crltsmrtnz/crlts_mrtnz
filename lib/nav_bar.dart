import 'package:flutter/material.dart';
import 'package:porfolio/home.dart';
import 'package:porfolio/about.dart';
import 'package:porfolio/Porfolio.dart';
import 'package:porfolio/user_page.dart';

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
  Widget buildHeader(BuildContext context) => Material(
        color: Colors.blue.shade800,
        child: InkWell(
          onTap: () {
            Navigator.pop(context); // Close navigations
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const UserPage(),
            ));
          },
          child: Container(
            padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage('assets/img/CrltsMrtnz.png'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Carlos Martínez",
                  style: TextStyle(
                      fontSize: 28, fontFamily: "roboto", color: Colors.white),
                ),
                Text(
                  "crltsmrtnz@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(15),
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
