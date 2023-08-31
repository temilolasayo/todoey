import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.todoText,
    required this.isChecked,
  }) : super(key: key);

  final String todoText;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        todoText,
        style: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        fillColor: const MaterialStatePropertyAll(kPrimaryColor),
        checkColor: kSecondaryColor,
        onChanged: null,
      ),
    );
  }
}
