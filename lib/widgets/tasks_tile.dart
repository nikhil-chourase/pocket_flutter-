import 'package:flutter/material.dart';
import 'package:pocket_flutter/models/taskData.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {


  TaskTile({required this.taskTitle,required this.isChecked,required this.checkBoxCallBack,required this.longPressCallBack});


  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;





  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack(),
      title: Text(taskTitle,
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null),
      ),
    trailing:  Checkbox(
        activeColor: Colors.pinkAccent.shade100,
        value: isChecked,
        onChanged:  (value){
          checkBoxCallBack(value);
        }),
    );
  }
}
