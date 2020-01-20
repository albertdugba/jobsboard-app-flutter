import 'package:flutter/material.dart';

class Job with ChangeNotifier {
  final String id;
  final String imageUrl;
  final String company;
  final String position;
  final String description;
  final String salary;
  bool isBookmarked;

  Job({
    @required this.id,
    @required this.imageUrl,
    @required this.company,
    @required this.position,
    @required this.description,
    @required this.salary,
    this.isBookmarked = false,
  });

  void toggleBookmaredJobs() {
    isBookmarked = !isBookmarked;

    notifyListeners();
  }
}
