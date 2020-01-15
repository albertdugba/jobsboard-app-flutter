import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/model/job_provider.dart';

class JobDetail extends StatelessWidget {
  static const routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final jobId = ModalRoute.of(context).settings.arguments;
    final loadedJobs = Provider.of<JobProvider>(context).findByID(jobId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedJobs.position),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Hero(
              tag: loadedJobs.imageUrl,
              child: Container(
                child: Image.network(loadedJobs.imageUrl),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(loadedJobs.position),
              Text('\$${loadedJobs.salary}K/year')
            ],
          )
        ],
      ),
    );
  }
}
