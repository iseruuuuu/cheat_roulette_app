import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../model/todo.dart';
import '../roulette_screen/roulette_screen.dart';

class AddScreenController extends GetxController {
  final _todos = <Todo>[].obs;
  final contents = ''.obs;
  final isTutorial = false.obs;

  List<Todo> get todos => _todos;

  @override
  void onInit() {
    super.onInit();
  }

  void addTodo(String description) {
    contents.value = description;
    if (contents.value == '') {
    } else {
      final todo = Todo(description: contents.value);
      _todos.add(todo);
    }
  }

  void remove(Todo todo) {
    _todos.remove(todo);
  }

  void onChanged(String text) {
    contents.value = text;
  }

  void onTap() {
    if (todos.isEmpty) {
      Get.snackbar(
        "値を登録してください",
        "ルーレットを行うために1つ以上の登録が必要です!!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
      );
    } else {
      Get.to(() => RouletteScreen(rouletteItem: todos));
    }
  }
}
