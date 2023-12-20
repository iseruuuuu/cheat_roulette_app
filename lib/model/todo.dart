import 'package:flutter/cupertino.dart';

@immutable
class Todo {
  final String id;
  final String description;

  Todo({required this.description})
      : id = DateTime.now().millisecondsSinceEpoch.toString();

  const Todo.withId({required this.id, required this.description});
}
