import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job.dart';

class TabSegment extends StatefulWidget {
  @override
  _TabSegmentState createState() => _TabSegmentState();
}

class _TabSegmentState extends State<TabSegment> {
  int _groupValues = 0;

  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Description'),
    1: Text('Company'),
    2: Text('Reviews')
  };

  static Widget _tabContent(BuildContext context, String content) {
    return Column(
      children: <Widget>[
        Text(' Content: $content'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // final tabJob = Provider.of<Job>(context);
    return Container(
      child: CupertinoSegmentedControl(
        padding: EdgeInsets.all(29),
        borderColor: Theme.of(context).accentColor,
        selectedColor: Theme.of(context).primaryColor,
        groupValue: _groupValues,
        onValueChanged: (changeFromGroupValue) {
          setState(() {
            _groupValues = changeFromGroupValue;
          });
        },
        children: logoWidgets,
      ),
    );
  }
}
