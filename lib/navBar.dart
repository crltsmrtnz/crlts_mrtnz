import 'package:flutter/material.dart';
import 'package:porfolio/home.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Carlos Martinez'),
            accountEmail: Text('crltsmrtnz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'CrltsMrtnz.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('background_developer.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () => Home(),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.work_outline),
            title: Text("Porfolio"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("About me"),
            onTap: () => null,
          ),
          Divider(),
        ],
      ),
    );
  }
}
