import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddTaskScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final taskController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Add New Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(labelText: 'Task Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (taskController.text.isNotEmpty) {
                  Navigator.pop(context, taskController.text);
                }
              },
              child: Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}