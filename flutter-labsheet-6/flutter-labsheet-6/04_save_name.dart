import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: NamePage()));

class NamePage extends StatefulWidget {
  const NamePage({super.key});
  State<NamePage> createState() => _NamePageState();
}
class _NamePageState extends State<NamePage> {
  String name = 'No name saved';
  final controller = TextEditingController();

  void load() async {
    final p = await SharedPreferences.getInstance();
    setState(() => name = p.getString('name') ?? 'No name saved');
  }
  void save() async {
    final p = await SharedPreferences.getInstance();
    await p.setString('name', controller.text);
    load();
  }
  void initState() { super.initState(); load(); }

  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: const Text('Save Name')),
    body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [
      TextField(controller: controller, decoration: const InputDecoration(labelText: 'Name')),
      ElevatedButton(onPressed: save, child: const Text('Save')),
      Text('Saved Name: $name'),
    ])),
  );
}
