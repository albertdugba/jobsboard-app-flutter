import 'package:flutter/material.dart';
import 'package:weather_app/model/job.dart';

class JobProvider with ChangeNotifier {
  final List<Job> _jobData = [
    Job(
      id: '1',
      imageUrl:
          'https://image.shutterstock.com/image-photo/autonomous-selfdriving-driverless-drive-vehicle-600w-295803887.jpg',
      position: 'Autonomous Engineer',
      location: 'San Francisco',
      description:
          'We are a team of dedicated enginner who produces flying cars and electric vehicles',
      salary: 120,
    ),
    Job(
      id: '2',
      imageUrl:
          'https://image.shutterstock.com/image-photo/stone-staffordshire-united-kingdom-november-260nw-1555667624.jpg',
      position: 'Frontend Developer',
      location: 'China',
      description:
          'Frontend Engineeer with skills in reactjs,node apis, graphQL',
      salary: 20,
    ),
    Job(
      id: '3',
      imageUrl:
          'https://image.shutterstock.com/image-photo/kiev-ukraine-may-30-2016-600w-428643526.jpg',
      position: 'Systems Engineer',
      location: 'San Francisco',
      description:
          'We are a team of dedicated enginner who produces flying cars and electric vehicles',
      salary: 100,
    ),
  ];

  List<Job> get jobsList {
    return [..._jobData];
  }

  Job findByID(String id) {
    return _jobData.firstWhere((job) => job.id == id);
  }
}
