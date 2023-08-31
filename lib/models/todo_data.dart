import 'package:flutter/material.dart';
import 'package:todoey/models/todos.dart';

class TodoData extends ChangeNotifier {
  List<ToDo> toDoList = [
    ToDo(todoText: "Buy Milk"),
    ToDo(todoText: "Go to the Gym"),
    ToDo(todoText: "Go to the Salon"),
  ];

  void addNewTodo(String newTodo) {
    toDoList.add(ToDo(todoText: newTodo));
    notifyListeners();
  }

  int get todoListLength {
    return toDoList.length;
  }

  checkTodoStatus(ToDo todo) {
    todo.checkBoxStatus();
    notifyListeners();
  }
}
