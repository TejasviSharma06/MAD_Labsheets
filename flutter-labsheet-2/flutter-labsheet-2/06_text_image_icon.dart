import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Widgets")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Flutter"),
            SizedBox(height: 15),
            Image.network("https://picsum.photos/150"),
            SizedBox(height: 15),
            Icon(Icons.favorite, size: 50),
          ],
        ),
      ),
    ),
  ));
}
