import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/todo_data.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TodoData();
      },
      child: const MaterialApp(home: TasksScreen()),
    );
  }
}
