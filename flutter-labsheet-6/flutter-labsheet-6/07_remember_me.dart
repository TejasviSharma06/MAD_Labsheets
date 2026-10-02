import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: LoginPage()));
class LoginPage extends StatefulWidget { const LoginPage({super.key}); State<LoginPage> createState() => _LoginPageState(); }
class _LoginPageState extends State<LoginPage> {
  bool remember = false; final user = TextEditingController();
  void initState() { super.initState(); load(); }
  void load() async { final p = await SharedPreferences.getInstance(); setState(() { remember = p.getBool('remember') ?? false; user.text = p.getString('user') ?? ''; }); }
  void login() async { final p = await SharedPreferences.getInstance(); await p.setBool('remember', remember); if (remember) await p.setString('user', user.text); }
  Widget build(BuildContext c) => Scaffold(appBar: AppBar(title: const Text('Login')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: user, decoration: const InputDecoration(labelText: 'Username')), CheckboxListTile(title: const Text('Remember Me'), value: remember, onChanged: (v) => setState(() => remember = v ?? false)), ElevatedButton(onPressed: login, child: const Text('Login'))])));
}
