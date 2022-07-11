import 'package:flutter/material.dart';
import 'package:pocket_flutter/models/taskData.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatefulWidget{






  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {





    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight :Radius.circular(20.0),),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600,color: Colors.pinkAccent.shade100),),
            TextField(

              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
              ),
              onSubmitted: (newText){
                newTaskTitle = newText;
              },


            ),
            FlatButton(

              color: Colors.pinkAccent.shade100,
              onPressed: (){
                setState((){
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);

                  Navigator.pop(context);


                });





              },
              child: Text('Add',
                style: TextStyle(color: Colors.white,fontSize: 20.0),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
