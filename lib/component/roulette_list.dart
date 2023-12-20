import 'package:flutter/material.dart';
import '../model/todo.dart';

class RouletteList extends StatelessWidget {
  final Todo todo;
  final Function() onTap;

  const RouletteList({
    Key? key,
    required this.todo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.description,
        style: const TextStyle(fontSize: 30),
      ),
      trailing: IconButton(
        //TODO 削除する
        onPressed: onTap,
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
