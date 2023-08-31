import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/todos.dart';

class TodoData extends ChangeNotifier {
  final List<ToDo> _toDoList = [
    ToDo(todoText: "Buy Milk"),
    ToDo(todoText: "Go to the Gym"),
    ToDo(todoText: "Go to the Salon"),
  ];

  UnmodifiableListView<ToDo> get toDoList {
    return UnmodifiableListView(_toDoList);
  }

  void addNewTodo(String newTodo) {
    _toDoList.add(ToDo(todoText: newTodo));
    notifyListeners();
  }

  int get todoListLength {
    return toDoList.length;
  }

  checkTodoStatus(ToDo todo) {
    todo.checkBoxStatus();
    notifyListeners();
  }

  void deleteTodo(int index) {
    toDoList.removeAt(index);
    notifyListeners();
  }
}
