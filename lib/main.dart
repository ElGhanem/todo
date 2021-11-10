import 'package:flutter/material.dart';
import 'package:todo/addscreen.dart';
import 'package:todo/editscreen.dart';
import 'package:todo/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      routes: {
        HomeScreen.routeName: (context)=> HomeScreen(),
        AddScreen.routeName: (context)=> AddScreen(),
        EditScreen.routeName: (context)=> EditScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

