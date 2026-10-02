import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NameApp()));

class NameApp extends StatefulWidget {
  @override
  State<NameApp> createState() => _NameAppState();
}

class _NameAppState extends State<NameApp> {
  final name = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Name")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: InputDecoration(labelText: "Name")),
            ElevatedButton(
              onPressed: () => setState(() => result = name.text),
              child: Text("Display"),
            ),
            Text(result, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
