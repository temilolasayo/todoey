import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/todo_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoData>(
      builder: (context, todoData, child) {
        return ListView.builder(
            itemCount: todoData.todoListLength,
            itemBuilder: ((context, index) {
              final todo = todoData.toDoList[index];
              return TaskTile(
                todoText: todo.todoText,
                isChecked: todo.isChecked,
                getTodoStatus: (isCheck) {
                  todoData.checkTodoStatus(todo);
                },
                deleteTodo: () {
                  todoData.deleteTodo(index);
                },
              );
            }));
      },
    );
  }
}
