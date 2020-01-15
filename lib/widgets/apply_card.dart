import 'package:flutter/material.dart';

class ApplyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 23.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    width: 120.0,
                    height: 390.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://bit.ly/36QYrvz',
                        fit: BoxFit.cover,
                      ),
                    )),
                Text('Be an applicant today'),
                Text(
                    'Get your dream job today and be part of the top 100 applicants to get training from our HR Experts'),
                RaisedButton(
                  child: Text('Sign Up'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
