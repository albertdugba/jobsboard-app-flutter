import 'package:flutter/material.dart';

class Job with ChangeNotifier {
  final String id;
  final String imageUrl;
  final String position;
  final String location;
  final String description;
  final int salary;
  bool isFavourite;

  Job({
    this.id,
    this.imageUrl,
    this.position,
    this.location,
    this.description,
    this.salary,
    this.isFavourite = false,
  });

  void toggleSaveJob() {
    isFavourite = !isFavourite;
  }
}
