import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Text Styles")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bold Text",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Italic Text",
                style: TextStyle(fontStyle: FontStyle.italic)),
            Text("Large Text", style: TextStyle(fontSize: 30)),
            Text("Centered Text", textAlign: TextAlign.center),
          ],
        ),
      ),
    ),
  ));
}
