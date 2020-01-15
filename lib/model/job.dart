import 'package:flutter/material.dart';

class Job with ChangeNotifier {
  final String id;
  final String imageUrl;
  final String company;
  final String position;

  final String description;
  final int salary;
  bool isFavourite;

  Job({
    this.id,
    this.imageUrl,
    this.company,
    this.position,
    this.description,
    this.salary,
    this.isFavourite = false,
  });

  void toggleSaveJob() {
    isFavourite = !isFavourite;
  }
}
