import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/models/tasks_data.dart';
class AddTask extends StatelessWidget {
  final TextEditingController mycontroller = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),topLeft: Radius.circular(30.0))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text('Add Task',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                 textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  controller: mycontroller,
                  textAlign:TextAlign.center,
                  autofocus: true,
                ),
              ),
           ElevatedButton(
             style:  ButtonStyle(
               backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
             ),
               onPressed:(){
                Provider.of<TaskData>(context,listen: false).adddata(mycontroller.text.toString());
                Navigator.pop(context);
               },
               child: Text('Add'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
