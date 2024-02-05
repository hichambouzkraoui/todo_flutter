import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0XFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0
            ),),
        TextField(
          onChanged: (newText) => newTaskTitle = newText,
          autofocus: true,
          textAlign: TextAlign.center,
        ),
            TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                  },
                child: Text(
                  "Add" ,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
            )
          ],

        ),
      ),
    );
  }
}
