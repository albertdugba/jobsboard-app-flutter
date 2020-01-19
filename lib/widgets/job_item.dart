import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job.dart';
import 'package:weather_app/styles/styles.dart';

class JobItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Job>(context);
    return Card(
      elevation: 4.9,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      child: ClipPath(
        child: Container(
          height: 125.0,
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
                      color: Theme.of(context).primaryColor, width: 6))),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 30,
                  minRadius: 30,
                  backgroundColor: Colors.teal,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(job.company),
                          Text(job.position, style: kJobTitle),
                          Text('\$${job.salary}/yr'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {},
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text('8 days')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
