import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: SubjectsPage()));
class SubjectsPage extends StatefulWidget { const SubjectsPage({super.key}); State<SubjectsPage> createState() => _SubjectsPageState(); }
class _SubjectsPageState extends State<SubjectsPage> {
  List<String> subjects = [];
  void initState() { super.initState(); load(); }
  void load() async { final p = await SharedPreferences.getInstance(); setState(() => subjects = p.getStringList('subjects') ?? []); }
  void save() async { final p = await SharedPreferences.getInstance(); subjects = ['Python', 'DBMS', 'AI', 'Flutter']; await p.setStringList('subjects', subjects); setState(() {}); }
  Widget build(BuildContext c) => Scaffold(appBar: AppBar(title: const Text('Favourite Subjects')), body: Column(children: [ElevatedButton(onPressed: save, child: const Text('Save')), Expanded(child: ListView.builder(itemCount: subjects.length, itemBuilder: (_, i) => ListTile(title: Text(subjects[i]))))]));
}
