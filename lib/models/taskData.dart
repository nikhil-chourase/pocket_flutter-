
import 'package:pocket_flutter/models/task.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(TaskName: 'buy milk', isDone: false),
    Task(TaskName: 'buy eggs', isDone: false),
    Task(TaskName: 'buy groceries', isDone: false),

  ];
  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle){
    final task = Task(TaskName: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();

  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}