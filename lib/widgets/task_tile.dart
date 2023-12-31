// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class TaskTile extends StatelessWidget {
  final String todoText;
  final void Function(bool?) getTodoStatus;
  final void Function() deleteTodo;
  final bool isChecked;

  const TaskTile({
    Key? key,
    required this.todoText,
    required this.getTodoStatus,
    required this.deleteTodo,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        todoText,
        style: TextStyle(
            color: kPrimaryColor,
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 18.0),
      ),
      trailing: Checkbox(
        value: isChecked,
        fillColor: const MaterialStatePropertyAll(kPrimaryColor),
        checkColor: kSecondaryColor,
        onChanged: getTodoStatus,
      ),
      onLongPress: deleteTodo,
    );
  }
}
