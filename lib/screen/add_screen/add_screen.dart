import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../component/roulette_list.dart';
import '../../component/roulette_text_field.dart';
import 'add_screen_controller.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddScreenController());
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: () => controller.onTap(),
            iconSize: 40,
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          iconSize: 40,
          icon: const Icon(Icons.settings_outlined),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 10,
            child: Obx(
              () {
                final todos = controller.todos;
                return ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    final todo = todos[index];
                    return RouletteList(
                      todo: todo,
                      onTap: () => controller.remove(todo),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RouletteTextField(
                    deviceSize: deviceSize.width - 120,
                    onChanged: (text) => controller.onChanged(text),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 30,
                    ),
                    onPressed: () {
                      controller.addTodo(controller.contents.value);
                    },
                    child: const Text(
                      '追加',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
