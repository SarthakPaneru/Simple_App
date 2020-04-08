import 'package:flutter/material.dart';
import 'package:project_task1/Pages/homepage.dart';


void main() => runApp(Task1());

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wage Calculator',
      theme: ThemeData(primarySwatch: Colors.green, brightness: Brightness.light),
      // Enables dark mode
      themeMode: ThemeMode.dark,
        darkTheme: ThemeData(brightness: Brightness.dark),
      home: HomePage(), // first page to be shown when app is opened
    );
  }
}