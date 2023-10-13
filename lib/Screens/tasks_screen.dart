import 'package:flutter/material.dart';
import 'package:untitled1/Screens/add_task_screen.dart';
import 'package:untitled1/models/tasks_data.dart';
import 'package:untitled1/widgets/tasks_list.dart';
import 'package:untitled1/models/Task.dart';
import 'package:provider/provider.dart';
class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context)=> AddTask()); },
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 40.0,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                   const Text('TaskMaster',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                   Text(
                      '${Provider.of<TaskData>(context).tasks.length} Tasks',
                      style: const TextStyle(
                        color:Colors.white,
                        fontSize: 18,
                        fontStyle:FontStyle.normal,
                      ),
                    ),
                  ],
                ),
          ),

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




