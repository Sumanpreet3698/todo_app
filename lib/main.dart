import 'package:flutter/material.dart';
import 'package:w_app/models/task_data.dart';
import 'package:w_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:w_app/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
