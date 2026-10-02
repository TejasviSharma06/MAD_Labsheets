import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: EvenOddApp()));

class EvenOddApp extends StatefulWidget {
  @override
  State<EvenOddApp> createState() => _EvenOddAppState();
}

class _EvenOddAppState extends State<EvenOddApp> {
  final number = TextEditingController();
  String result = "";

  void check() {
    int n = int.tryParse(number.text) ?? 0;
    setState(() => result = n % 2 == 0 ? "Even Number" : "Odd Number");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Even or Odd")),
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
