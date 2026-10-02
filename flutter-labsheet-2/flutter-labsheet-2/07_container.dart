import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Container")),
      body: Center(
        child: Container(
          height: 150,
          width: 250,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text("Hello Flutter", style: TextStyle(fontSize: 22)),
          ),
        ),
      ),
    ),
  ));
}
