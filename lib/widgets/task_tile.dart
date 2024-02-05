import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  late final String taskTitle;
  void Function(bool?) onChanged;
  void Function()? onLongPress;

  TaskTile({this.isChecked = false, required this.taskTitle, required this.onChanged, required this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPress,
        title: Text(
          taskTitle,
          style:TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
          ),),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: onChanged,
        )
    );
  }
}