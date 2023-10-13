import 'package:flutter/foundation.dart';
import 'package:untitled1/models/Task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks =[
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Mango'),
    Task(name: 'Buy Dhoop'),
  ];
  void adddata(String newtasktitle)
  {
   final task =Task(name: newtasktitle) ;
    tasks.add(task);
    notifyListeners();
  }
  void update (Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void delete(Task task)
  {
    tasks.remove(task);
    notifyListeners();
  }
}