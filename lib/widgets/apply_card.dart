import 'package:flutter/material.dart';
import 'package:weather_app/styles/styles.dart';

class ApplyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 23.0),
      child: Card(
        child: Container(
          height: 120.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://c7.uihere.com/files/749/121/120/5b966b4ed47bd-thumb.jpg'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Become an ealry applicant!'),
              Text(
                  'When you fill in the regitration form, you have mandatory fields and ')
            ],
          ),
        ),
      ),
    );
  }
}
