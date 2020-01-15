import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job_provider.dart';
import 'package:weather_app/widgets/job_item.dart';

class JobList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final jobProvider = Provider.of<JobProvider>(context).jobsList;
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: ListView.builder(
            itemCount: jobProvider.length,
            itemBuilder: (BuildContext context, i) {
              return ChangeNotifierProvider(
                create: (context) => jobProvider[i],
                child: JobItem(),
              );
            }),
      ),
    );
  }
}
