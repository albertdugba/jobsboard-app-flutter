import 'package:flutter/material.dart';
import 'package:weather_app/model/job.dart';

class JobProvider with ChangeNotifier {
  final List<Job> jobs = [
    Job(
      id: '1',
      imageUrl: Image.asset('images/air.jpeg'),
      company: 'AirBnB,London',
      position: 'Frontend Dev',
      description:
          'As part of the frontend engineering team, you would be work with designers and backend engineers to develop a working proptoype. Skills required includes but not limited to',
      salary: ' 20-25k',
    ),
    Job(
      id: '2',
      imageUrl: Image.asset('images/amazon.png'),
      company: 'Amazon, South Africa',
      position: 'DevOps Eng',
      description:
          'As part of the frontend Devops team, you would be working on the server side alot, configuring databases, dockerising images, testing and automating workflow',
      salary: ' 20-25k',
    ),
    Job(
      id: '3',
      imageUrl: Image.asset('images/bull.jpeg'),
      company: 'RedBull,Ghana',
      position: 'Digital Marketer',
      description:
          'A solid digital marketing manager who will create and manage campaigns, and target audience via social media handles, read data anaalytics from the dashboard and make meaning out of that data for business descisions',
      salary: ' 20-25k',
    ),
    Job(
      id: '3',
      imageUrl: Image.asset('images/bull.jpeg'),
      company: 'RedBull,Ghana',
      position: 'Digital Marketer',
      description:
          'A solid digital marketing manager who will create and manage campaigns, and target audience via social media handles, read data anaalytics from the dashboard and make meaning out of that data for business descisions',
      salary: ' 20-25k',
    ),
    Job(
      id: '3',
      imageUrl: Image.asset('images/bull.jpeg'),
      company: 'RedBull,Ghana',
      position: 'Digital Marketer',
      description:
          'A solid digital marketing manager who will create and manage campaigns, and target audience via social media handles, read data anaalytics from the dashboard and make meaning out of that data for business descisions',
      salary: ' 20-25k',
    ),
    Job(
      id: '3',
      imageUrl: Image.asset('images/bull.jpeg'),
      company: 'RedBull,Ghana',
      position: 'Digital Marketer',
      description:
          'A solid digital marketing manager who will create and manage campaigns, and target audience via social media handles, read data anaalytics from the dashboard and make meaning out of that data for business descisions',
      salary: ' 20-25k',
    ),
    Job(
      id: '3',
      imageUrl: Image.asset('images/bull.jpeg'),
      company: 'RedBull,Ghana',
      position: 'Digital Marketer',
      description:
          'A solid digital marketing manager who will create and manage campaigns, and target audience via social media handles, read data anaalytics from the dashboard and make meaning out of that data for business descisions',
      salary: ' 20-25k',
    ),
  ];

  // void findJobById(String id) {
  //   final jobId = jobs.where((job) => job.id == id);
  //   return jobId;
  // }
}
