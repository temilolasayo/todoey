// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
    required this.todoText,
  }) : super(key: key);

  final String todoText;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        widget.todoText,
        style: TextStyle(
          color: kPrimaryColor,
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        fillColor: const MaterialStatePropertyAll(kPrimaryColor),
        checkColor: kSecondaryColor,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}
