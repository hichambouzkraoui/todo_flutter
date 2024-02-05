import 'package:flutter/cupertino.dart';
import 'package:tudoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  get taskCount => _tasks.length;

  Task getTask(int index) => _tasks[index];

  void addTask(String taskTitle) {
      _tasks.add(Task(name: taskTitle));
      notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}