import 'package:flutter/material.dart';
import 'package:w_app/models/task.dart';

class TaskTile extends StatelessWidget {
  final isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final void Function() longPressCallback;
  TaskTile({
    this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
