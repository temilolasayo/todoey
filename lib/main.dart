import 'package:flutter/material.dart';
import 'package:todoey/constants/todo_list.dart';
import 'package:todoey/models/todos.dart';
import 'package:todoey/screens/tasks_screen.dart';

List<ToDo> todos = toDoList;

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TasksScreen(
      todos: todos,
    ));
  }
}
