import 'package:flutter/material.dart';

class JobApplyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
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
