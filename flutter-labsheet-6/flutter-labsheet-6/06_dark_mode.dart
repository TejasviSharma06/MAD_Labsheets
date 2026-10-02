import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const DarkApp());
class DarkApp extends StatefulWidget { const DarkApp({super.key}); State<DarkApp> createState() => _DarkAppState(); }
class _DarkAppState extends State<DarkApp> {
  bool dark = false;
  void initState() { super.initState(); load(); }
  void load() async { final p = await SharedPreferences.getInstance(); setState(() => dark = p.getBool('dark') ?? false); }
  void change(bool v) async { final p = await SharedPreferences.getInstance(); await p.setBool('dark', v); setState(() => dark = v); }
  Widget build(BuildContext c) => MaterialApp(themeMode: dark ? ThemeMode.dark : ThemeMode.light, theme: ThemeData.light(), darkTheme: ThemeData.dark(), home: Scaffold(appBar: AppBar(title: const Text('Dark Mode')), body: Center(child: SwitchListTile(title: const Text('Dark Mode'), value: dark, onChanged: change))));
}
