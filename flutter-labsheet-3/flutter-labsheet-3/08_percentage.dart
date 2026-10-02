import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PercentageApp()));

class PercentageApp extends StatefulWidget {
  @override
  State<PercentageApp> createState() => _PercentageAppState();
}

class _PercentageAppState extends State<PercentageApp> {
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  String result = "";

  void calculate() {
    double x = double.tryParse(a.text) ?? 0;
    double y = double.tryParse(b.text) ?? 0;
    double z = double.tryParse(c.text) ?? 0;
    double p = (x + y + z) / 3;
    setState(() => result = "Percentage: ${p.toStringAsFixed(2)}%");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Percentage")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number),
            TextField(controller: b, keyboardType: TextInputType.number),
            TextField(controller: c, keyboardType: TextInputType.number),
            ElevatedButton(onPressed: calculate, child: Text("Calculate")),
            Text(result),
          ],
        ),
      ),
    );
  }
}
