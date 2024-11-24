import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      this.onChanged});

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        right: 20,
        bottom: 0,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.white,
              checkColor: Colors.black,
              side: const BorderSide(
                color: Colors.white,
              ),
            ),
            Text(
              taskName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.white,
                  decorationThickness: 3),
            ),
          ],
        ),
      ),
    );
  }
}
