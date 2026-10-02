import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Student Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: Tejasvi Sharma"),
            Text("Course: BCA"),
            Text("Semester: 5"),
            Text("College: COER University"),
          ],
        ),
      ),
    ),
  ));
}
