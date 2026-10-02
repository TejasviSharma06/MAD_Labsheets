import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CalculatorApp()));

class CalculatorApp extends StatefulWidget {
  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  void calculate(String op) {
    double x = double.tryParse(a.text) ?? 0;
    double y = double.tryParse(b.text) ?? 0;
    double r = 0;

    if (op == "+") r = x + y;
    if (op == "-") r = x - y;
    if (op == "*") r = x * y;
    if (op == "/") r = y != 0 ? x / y : 0;

    setState(() => result = "Result: $r");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number),
            TextField(controller: b, keyboardType: TextInputType.number),
            Wrap(
              spacing: 8,
              children: [
                ElevatedButton(onPressed: () => calculate("+"), child: Text("+")),
                ElevatedButton(onPressed: () => calculate("-"), child: Text("-")),
                ElevatedButton(onPressed: () => calculate("*"), child: Text("*")),
                ElevatedButton(onPressed: () => calculate("/"), child: Text("/")),
              ],
            ),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
