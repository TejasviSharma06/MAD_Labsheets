import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SnackApp()));

class SnackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Button Pressed!")),
            );
          },
          child: Text("Show Message"),
        ),
      ),
    );
  }
}
