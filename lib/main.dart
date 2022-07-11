import 'package:flutter/material.dart';
import 'package:pocket_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:pocket_flutter/models/taskData.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
          home: TasksScreen(),

      ),
    );
  }
}
