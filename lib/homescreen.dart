import 'package:flutter/material.dart';
import 'package:todo/addscreen.dart';
import 'package:todo/editscreen.dart';
import 'package:todo/tasks.dart' as tasks;

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: tasks.tasksList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Checkbox(
                value: tasks.tasksList[index].checked,
                onChanged: (newValue) {
                  setState(() {
                    tasks.tasksList[index].checked = newValue!;
                  });
                }
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, EditScreen.routeName, arguments: index).then((x) => setState(() {}));
                },
                child: Text(tasks.tasksList[index].name)
              ),
            ],
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, AddScreen.routeName).then((x) => setState(() {}));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
