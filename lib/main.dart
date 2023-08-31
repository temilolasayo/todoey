import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const TasksScreen();
  }
}
