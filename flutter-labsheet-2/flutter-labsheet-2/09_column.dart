import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Column")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Name"),
          Text("Course"),
          Text("College"),
          Text("Semester"),
        ],
      ),
    ),
  ));
}
