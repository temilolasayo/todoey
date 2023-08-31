import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(todoText: "Buy Milk", isChecked: true),
        TaskTile(todoText: "Go to the Gym", isChecked: false),
        TaskTile(todoText: "Go to the Salon", isChecked: true),
      ],
    );
  }
}
