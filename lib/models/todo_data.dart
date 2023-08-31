import 'package:flutter/material.dart';
import 'package:todoey/models/todos.dart';

class TodoData extends ChangeNotifier {
  List<ToDo> toDoList = [
    ToDo(todoText: "Buy Milk"),
    ToDo(todoText: "Go to the Gym"),
    ToDo(todoText: "Go to the Salon"),
  ];

  int get todoListLength {
    return toDoList.length;
  }
}
