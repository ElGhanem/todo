import 'package:flutter/material.dart';
import 'package:todo/tasks.dart';
import 'package:todo/tasks.dart' as tasks;

class EditScreen extends StatelessWidget {
  static String routeName = 'edit';
  var txt = TextEditingController();
  late String name;
  late int index;
  @override
  Widget build(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    txt.text = tasks.tasksList[index].name;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit | Delete Todo'),
      ),
      body: Stack(
        children: [
          TextField(
            controller: txt,
            onChanged: (value) {
              name = value;
            },
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      tasks.tasksList.removeAt(index);
                      Navigator.pop(context);
                    },
                    child: Text('Delete'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        tasks.tasksList[index].name = name;
                        Navigator.pop(context);
                      },
                      child: Text('Save')
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
