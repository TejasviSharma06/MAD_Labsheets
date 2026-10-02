import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MarksApp()));

class MarksApp extends StatefulWidget {
  @override
  State<MarksApp> createState() => _MarksAppState();
}

class _MarksAppState extends State<MarksApp> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();
  String result = "";

  void total() {
    double a = double.tryParse(m1.text) ?? 0;
    double b = double.tryParse(m2.text) ?? 0;
    double c = double.tryParse(m3.text) ?? 0;
    setState(() => result = "${name.text} - Total: ${a + b + c}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Total Marks")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: InputDecoration(labelText: "Name")),
            TextField(controller: m1, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Subject 1")),
            TextField(controller: m2, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Subject 2")),
            TextField(controller: m3, keyboardType: TextInputType.number, decoration: InputDecoration(labelText: "Subject 3")),
            ElevatedButton(onPressed: total, child: Text("Calculate Total")),
            Text(result),
          ],
        ),
      ),
    );
  }
}
