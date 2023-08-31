import 'package:flutter/material.dart';
import 'package:todoey/constants/todo_list.dart';
import 'package:todoey/widgets/task_tile.dart';

List todos = toDoList;

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: ((context, index) {
          return TaskTile(todoText: todos[index].todoText);
        }));
  }
}
