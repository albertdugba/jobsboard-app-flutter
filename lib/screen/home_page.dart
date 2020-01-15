import 'package:flutter/material.dart';
import 'package:weather_app/drawer.dart';
import 'package:weather_app/widgets/apply_card.dart';
import 'package:weather_app/widgets/job_list.dart';

class HomePage extends StatelessWidget {
  _customButton(Function callback, IconData icon, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: InkWell(
        onTap: callback,
        child: Material(
          elevation: 0,
          color: Colors.purpleAccent.withOpacity(.3),
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 9),
                Text(desc, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jobs Board'),
        bottom: PreferredSize(
          child: Row(
            children: <Widget>[
              _customButton(() {}, Icons.filter, 'Filter'),
              SizedBox(
                width: 10,
              ),
              _customButton(() {}, Icons.location_city, 'Location'),
              SizedBox(
                width: 10,
              ),
              _customButton(() {}, Icons.category, 'Category'),
            ],
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height + 20,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://scontent.facc5-1.fna.fbcdn.net/v/t1.0-1/c0.0.320.320a/p320x320/81929060_3319331614760526_2350742833549279232_n.jpg?_nc_cat=110&_nc_eui2=AeEZiYcthXgcmuZXHBnlWsppDzncWuY_z-HyutdHWrS9zPPWzbuoHQ9T0mff1_tfzT8ayjcvHKXSfU7HszSKHL22umnNTDzb8VlZE-U2yrPkmQ&_nc_ohc=-M7JryXSBQsAQk8AgJEcIOaCOOdY3a4CQuH4P2qP9A-UilSGLwbvN98Og&_nc_ht=scontent.facc5-1.fna&_nc_tp=1&oh=d3756546ea64e430c35e2804e0a2f6b2&oe=5E9BA7ED'))),
            )),
            ListTile(
              onTap: () {},
              title: Text('Home'),
              leading: Icon(Icons.home, size: 30),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text('Bookmarked'),
              leading: Icon(Icons.bookmark, size: 30),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text('Settings'),
              leading: Icon(Icons.settings, size: 30),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text('Profile'),
              leading: Icon(Icons.person, size: 30),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              title: Text('Logout'),
              leading: Icon(Icons.arrow_downward, size: 30),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 420.0,
                    child: JobList(),
                  ),
                  Container(
                    height: 120,
                    child: ApplyCard(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
