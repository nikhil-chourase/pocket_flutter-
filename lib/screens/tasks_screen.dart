import 'package:flutter/material.dart';
import 'package:pocket_flutter/models/taskData.dart';
import 'package:pocket_flutter/screens/add_task_screen.dart';
import 'package:pocket_flutter/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
class TasksScreen extends StatefulWidget {


  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent.shade100,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent.shade100,
        child: Icon(Icons.add, color: Colors.white,),

        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>
              AddTaskScreen()
          );

        },


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,

                  child: Icon(
                      Icons.list,size: 30.0,color: Colors.pinkAccent.shade100,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  'Todo\'s',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
                Text('${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,

                  ),
                ),
              ],

            ),

          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),

              ),
              child: TasksList(),

            ),
          ),
        ],
      ),
    );

  }
}
