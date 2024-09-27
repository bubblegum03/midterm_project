import 'package:flutter/material.dart';

class TaskCompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('Task Completed')),
      body: Center(
        child: Text('Task "$task" is marked as complete!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
