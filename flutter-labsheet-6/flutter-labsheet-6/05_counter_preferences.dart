import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: CounterPage()));
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  int count = 0;
  void initState() { super.initState(); load(); }
  void load() async { final p = await SharedPreferences.getInstance(); setState(() => count = p.getInt('count') ?? 0); }
  void add() async { final p = await SharedPreferences.getInstance(); setState(() => count++); await p.setInt('count', count); }
  Widget build(BuildContext c) => Scaffold(appBar: AppBar(title: const Text('Counter')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('$count', style: const TextStyle(fontSize: 40)), ElevatedButton(onPressed: add, child: const Text('Add'))])));
}
