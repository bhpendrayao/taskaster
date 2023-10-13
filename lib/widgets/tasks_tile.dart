import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskTile extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?)? checkboxCallback;
  final void Function()? longPressCallback;

  TaskTile({required this.taskTitle,required this.isChecked,required this.checkboxCallback,this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: ListTile(
        onLongPress: longPressCallback,
        title: Text(taskTitle,style: TextStyle(fontWeight: FontWeight.w400,decoration: isChecked?TextDecoration.lineThrough:null),),
        trailing:Checkbox(
          activeColor: Colors.green,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}


