import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/constants/todo_list.dart';
import 'package:todoey/models/todos.dart';
import 'package:todoey/screens/tasks_screen.dart';

List<ToDo> todos = toDoList;
// late TextEditingController todoEditingController;
late String newTodo;

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "New Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: kPrimaryColor,
              ),
            ),
            TextFormField(
              // controller: todoEditingController,
              onChanged: (value) {
                newTodo = value;
              },
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hoverColor: kPrimaryColor),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  todos.add(ToDo(todoText: newTodo));
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => TasksScreen(todos: todos)),
                    ));
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
              ),
              child: const Text(
                "Add",
                style: TextStyle(color: kSecondaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
