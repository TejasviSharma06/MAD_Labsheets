import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: DataPage()));
class DataPage extends StatefulWidget { const DataPage({super.key}); State<DataPage> createState() => _DataPageState(); }
class _DataPageState extends State<DataPage> {
  String name = '', email = ''; int age = 0; final n = TextEditingController(), e = TextEditingController(), a = TextEditingController();
  void save() async { final p = await SharedPreferences.getInstance(); await p.setString('name', n.text); await p.setString('email', e.text); await p.setInt('age', int.tryParse(a.text) ?? 0); load(); }
  void load() async { final p = await SharedPreferences.getInstance(); setState(() { name = p.getString('name') ?? ''; email = p.getString('email') ?? ''; age = p.getInt('age') ?? 0; }); }
  void initState() { super.initState(); load(); }
  Widget build(BuildContext c) => Scaffold(appBar: AppBar(title: const Text('Multiple Values')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: n, decoration: const InputDecoration(labelText: 'Name')), TextField(controller: e, decoration: const InputDecoration(labelText: 'Email')), TextField(controller: a, decoration: const InputDecoration(labelText: 'Age')), ElevatedButton(onPressed: save, child: const Text('Save')), Text('$name | $email | $age')])));
}
