import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: ClearPage()));
class ClearPage extends StatefulWidget { const ClearPage({super.key}); State<ClearPage> createState() => _ClearPageState(); }
class _ClearPageState extends State<ClearPage> {
  String value = 'Saved Data';
  void save() async { final p = await SharedPreferences.getInstance(); await p.setString('data', 'Hello Flutter'); setState(() => value = 'Hello Flutter'); }
  void clear() async { final p = await SharedPreferences.getInstance(); await p.clear(); setState(() => value = 'Data Cleared'); }
  Widget build(BuildContext c) => Scaffold(appBar: AppBar(title: const Text('Clear Preferences')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(value), ElevatedButton(onPressed: save, child: const Text('Save')), ElevatedButton(onPressed: clear, child: const Text('Clear'))])));
}
