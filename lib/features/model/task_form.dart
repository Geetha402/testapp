import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String id;
  final String user;
  final String date;
  final String tag;
  final Color tagColor;

  TaskModel({
    required this.title,
    required this.id,
    required this.user,
    required this.date,
    required this.tag,
    required this.tagColor,
  });
}
