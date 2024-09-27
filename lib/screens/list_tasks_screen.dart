import 'package:flutter/material.dart';

class ListTasksScreen extends StatefulWidget {
  @override
  _ListTasksScreenState createState() => _ListTasksScreenState();
}

class _ListTasksScreenState extends State<ListTasksScreen> {
  List<String> tasks = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final newTask = ModalRoute.of(context)?.settings.arguments as String?;
    if (newTask != null) {
      tasks.add(newTask);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Tasks')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            onTap: () {
              Navigator.pushNamed(context, '/taskDetails', arguments: tasks[index]);
            },
          );
        },
      ),
    );
  }
}
