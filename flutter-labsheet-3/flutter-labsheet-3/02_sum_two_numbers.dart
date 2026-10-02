import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: SumApp()));

class SumApp extends StatefulWidget {
  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  void sum() {
    double x = double.tryParse(a.text) ?? 0;
    double y = double.tryParse(b.text) ?? 0;
    setState(() => result = "Sum: ${x + y}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sum")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number),
            TextField(controller: b, keyboardType: TextInputType.number),
            ElevatedButton(onPressed: sum, child: Text("Add")),
            Text(result),
          ],
        ),
      ),
    );
  }
}
