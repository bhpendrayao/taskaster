import 'package:flutter/material.dart';
import 'package:untitled1/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/models/tasks_data.dart';
import 'package:untitled1/models/Task.dart';
class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}
class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      Task task=Provider.of<TaskData>(context).tasks[index];
      return TaskTile(
        taskTitle: task.name,
        isChecked:task.isDone,
        checkboxCallback:(checkboxState) {
               Provider.of<TaskData>(context,listen: false).update(task);
        },
        longPressCallback: (){
          Provider.of<TaskData>(context,listen: false).delete(task);
      },
      );
    },itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}