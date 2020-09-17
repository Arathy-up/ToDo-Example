import 'package:flutter/material.dart';
import 'package:flutter_dynamic_array/ToDoAppEg.dart';

void main()=>runApp(ToDoAppMainEg());

class ToDoAppMainEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ToDo App"),
        ),
        body: ToDoAppEg(),
      ),
    );
  }
}
