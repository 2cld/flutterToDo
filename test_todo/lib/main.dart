import 'package:flutter/material.dart';
import 'package:test_todo/ui/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//      debugShowCheckedModeBanner: false,
      title: 'caToDo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home(),
    );
  }
}
