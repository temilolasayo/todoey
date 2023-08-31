import 'package:flutter/material.dart';
import 'package:todoey/constants/constants.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

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
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: kPrimaryColor,
              ),
            ),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hoverColor: kPrimaryColor),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
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
