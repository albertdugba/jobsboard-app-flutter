import 'package:flutter/material.dart';

class Job with ChangeNotifier {
  final String id;
  final Image imageUrl;
  final String company;
  final String position;
  final String description;
  final String salary;
  bool isFavourite;

  Job({
    @required this.id,
    @required this.imageUrl,
    @required this.company,
    @required this.position,
    @required this.description,
    @required this.salary,
    this.isFavourite = false,
  });

  void toggleSaveJob() {
    isFavourite = !isFavourite;
  }
}
