

import 'package:flutter/material.dart';

class Task extends ChangeNotifier{
  final String TaskName;
  bool isDone= false;

  Task({required this.TaskName,required this.isDone});

  void toggleDone(){
    isDone = !isDone;
  }


}