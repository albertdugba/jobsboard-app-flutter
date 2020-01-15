import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job_provider.dart';
import 'package:weather_app/screen/home_page.dart';
import 'package:weather_app/screen/job_detail.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: JobProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.purple[500],
          accentColor: Colors.grey[900],
        ),
        home: HomePage(),
        routes: {
          JobDetail.routeName: (context) => JobDetail(),
        },
      ),
    );
  }
}
