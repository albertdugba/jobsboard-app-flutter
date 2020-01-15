import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height + 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://scontent.facc5-1.fna.fbcdn.net/v/t1.0-1/c0.0.320.320a/p320x320/81929060_3319331614760526_2350742833549279232_n.jpg?_nc_cat=110&_nc_eui2=AeEZiYcthXgcmuZXHBnlWsppDzncWuY_z-HyutdHWrS9zPPWzbuoHQ9T0mff1_tfzT8ayjcvHKXSfU7HszSKHL22umnNTDzb8VlZE-U2yrPkmQ&_nc_ohc=-M7JryXSBQsAQk8AgJEcIOaCOOdY3a4CQuH4P2qP9A-UilSGLwbvN98Og&_nc_ht=scontent.facc5-1.fna&_nc_tp=1&oh=d3756546ea64e430c35e2804e0a2f6b2&oe=5E9BA7ED'))),
            )),
            ListTile(
              onTap: () {},
              title: Text('Home'),
              leading: Icon(Icons.home, size: 30),
            ),
            ListTile(
              onTap: () {},
              title: Text('Bookmarked'),
              leading: Icon(Icons.bookmark, size: 30),
            ),
            ListTile(
              onTap: () {},
              title: Text('Settings'),
              leading: Icon(Icons.settings, size: 30),
            ),
            ListTile(
              onTap: () {},
              title: Text('Profile'),
              leading: Icon(Icons.person, size: 30),
            ),
            ListTile(
              onTap: () {},
              title: Text('Logout'),
              leading: Icon(Icons.arrow_downward, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
