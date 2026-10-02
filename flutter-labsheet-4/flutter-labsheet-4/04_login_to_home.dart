import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:LoginScreen()));
class LoginScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Login')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.pushReplacement(c,MaterialPageRoute(builder:(_)=>HomeScreen())),child:Text('Login'))));}
class HomeScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Home')),body:Center(child:Text('Welcome Home')));}
