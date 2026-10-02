import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ElevatedButton(onPressed: () {}, child: Text("Reset")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
          ],
        ),
      ),
    ),
  ));
}
