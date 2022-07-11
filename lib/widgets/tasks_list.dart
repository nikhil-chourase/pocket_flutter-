import 'package:flutter/material.dart';
import 'package:pocket_flutter/widgets/tasks_tile.dart';
import 'package:pocket_flutter/models/taskData.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {






  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(

      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(itemBuilder: (context, index) {
          final taskNo = taskData.tasks[index];

          return TaskTile(
              taskTitle: taskNo.TaskName,
              isChecked: taskNo.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(taskNo);
              },

              longPressCallBack:(){
                //taskData.deleteTask(taskNo);
                },
          );
        }, itemCount: taskData.taskCount,);

      },
    );
  }


}