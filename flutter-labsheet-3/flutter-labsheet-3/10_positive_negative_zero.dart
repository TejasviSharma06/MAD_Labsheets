import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NumberApp()));

class NumberApp extends StatefulWidget {
  @override
  State<NumberApp> createState() => _NumberAppState();
}

class _NumberAppState extends State<NumberApp> {
  final number = TextEditingController();
  String result = "";

  void check() {
    double n = double.tryParse(number.text) ?? 0;

    if (n > 0) {
      result = "Positive Number";
    } else if (n < 0) {
      result = "Negative Number";
    } else {
      result = "Zero";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number Check")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: number, keyboardType: TextInputType.number),
            ElevatedButton(onPressed: check, child: Text("Check")),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
