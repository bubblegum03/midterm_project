import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_task_screen.dart';
import 'screens/list_tasks_screen.dart';
import 'screens/task_details_screen.dart';
import 'screens/task_completed_screen.dart';

void main() {
  runApp(TaskManagementApp());
}

class TaskManagementApp extends StatefulWidget {
  @override
  _TaskManagementAppState createState() => _TaskManagementAppState();
}

class _TaskManagementAppState extends State<TaskManagementApp> {
  bool _isLightTheme = true;

  void _switchTheme(bool isLight) {
    setState(() {
      _isLightTheme = isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management System',
      theme: _isLightTheme ? ThemeData.light() : ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(switchTheme: _switchTheme, isLightTheme: _isLightTheme),
        '/addTask': (context) => AddTaskScreen(),
        '/listTasks': (context) => ListTasksScreen(),
        '/taskDetails': (context) => TaskDetailsScreen(),
        '/taskCompleted': (context) => TaskCompletedScreen(),
      },
    );
  }
}

