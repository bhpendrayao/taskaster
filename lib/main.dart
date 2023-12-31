import 'package:flutter/material.dart';
import 'package:untitled1/Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/models/tasks_data.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
         child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

