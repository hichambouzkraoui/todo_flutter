import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tudoey_flutter/models/task_data.dart';
import 'package:tudoey_flutter/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen()
      ),
    );
  }
}
