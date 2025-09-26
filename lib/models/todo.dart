import 'package:flutter/material.dart';

enum Priority {
  urgent(Colors.red, 'Urgent'),
  high(Colors.orange, 'High'),
  medium(Colors.amber, 'Medium'),
  low(Colors.grey, 'Low');

  final Color color;
  final String title;

  const Priority(this.color, this.title);
}

class Todo {
  const Todo({
    required this.title,
    required this.description,
    required this.priority,
  });

  final String title;
  final String description;
  final Priority priority;
}
