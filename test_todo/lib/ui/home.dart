import 'package:flutter/material.dart';
import 'package:test_todo/ui/catodo_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("caToDo"),
        backgroundColor: Colors.black54,
      ),
      body: new CaToDoScreen(),
    );
  }
}