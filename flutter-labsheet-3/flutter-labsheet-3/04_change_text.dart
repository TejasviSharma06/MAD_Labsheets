import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ChangeTextApp()));

class ChangeTextApp extends StatefulWidget {
  @override
  State<ChangeTextApp> createState() => _ChangeTextAppState();
}

class _ChangeTextAppState extends State<ChangeTextApp> {
  String text = "Hello Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Text")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () => setState(() => text = "Text Changed!"),
              child: Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
