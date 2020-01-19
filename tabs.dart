// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ConnectAccountPage extends StatefulWidget {
//   @override
//   _ConnectAccountPageState createState() => _ConnectAccountPageState();
// }

// class _ConnectAccountPageState extends State<ConnectAccountPage> {
//   int sharedValue = 0;
//   final Map<int, Widget> logoWidgets = const <int, Widget>{
//     0: Text('Accepted'),
//     1: Text('Pending'),
//   };

//   // List<Widget> _children = [
//   //   AcceptedListPage(),
//   //  ' PendingListPage(),'
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: <Widget>[
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 50,
//           padding: const EdgeInsets.all(8),
//           child: CupertinoSegmentedControl<int>(
//             selectedColor: Colors.red,
//             borderColor: Colors.red,
//             children: logoWidgets,
//             onValueChanged: (int val) {
//               setState(() {
//                 sharedValue = val;
//               });
//             },
//             groupValue: sharedValue,
//           ),
//         ),
//         Expanded(
//           child: _children[sharedValue],
//         ),
//       ],
//     ));
//   }
// }
