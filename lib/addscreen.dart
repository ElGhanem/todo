import 'package:flutter/material.dart';
import 'package:todo/tasks.dart';
import 'package:todo/tasks.dart' as tasks;

class AddScreen extends StatelessWidget {
  static String routeName = 'add';
  late String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Stack(
        children: [
          TextField(
            onChanged: (value) {
              name = value;
            },
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  var x = Task(name, tasks.tasksList.length, false);
                  tasks.tasksList.add(x);
                  Navigator.pop(context);

                },
                child: Text('Add')
            ),
          )
        ],
      ),

    );
  }
}
