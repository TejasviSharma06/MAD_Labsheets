import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FormApp()));

class FormApp extends StatefulWidget {
  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  final name = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Form")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(labelText: "Name"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => result = "Submitted: ${name.text}"),
                  child: Text("Submit"),
                ),
                ElevatedButton(
                  onPressed: () => setState(() {
                    name.clear();
                    result = "";
                  }),
                  child: Text("Reset"),
                ),
              ],
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}
