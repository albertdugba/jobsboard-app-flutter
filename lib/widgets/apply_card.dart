import 'package:flutter/material.dart';

class ApplyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.teal.withOpacity(.4),
              Colors.grey.withOpacity(.5)
            ]),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/job.jpeg'),
            ),
          ),
        ),
      ],
    );
  }
}
