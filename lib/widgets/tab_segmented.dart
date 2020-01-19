import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  static Widget _tabContent(String content) {
    return Column(
      children: <Widget>[
        Text(' Content: $content'),
      ],
    );
  }

  List<Widget> bodies = [
    _tabContent('Description'),
    _tabContent('Company'),
    _tabContent('Reviews'),
  ];
  @override
  Widget build(BuildContext context) {
    // final tabJob = Provider.of<Job>(context);
    return Column(
      children: <Widget>[
        Container(
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
        ),
        Text(
          bodies.toString(),
        )
      ],
    );
  }
}
