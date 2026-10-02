import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: Center(
        child: Image.network(
          "https://picsum.photos/200",
          width: 200,
          height: 200,
        ),
      ),
    ),
  ));
}
