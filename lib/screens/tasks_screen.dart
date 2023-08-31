// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
            color: kSecondaryColor,
          ),
        ),
        backgroundColor: const Color(0xFF0F4D19),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0, bottom: 20.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 50.0,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Todoey",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 45.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "12 Tasks",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30.0, right: 10.0),
                    child: TaskList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}