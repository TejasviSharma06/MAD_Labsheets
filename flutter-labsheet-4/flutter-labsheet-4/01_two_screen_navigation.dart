import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: FirstScreen()));
class FirstScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('First Screen')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>SecondScreen())),child:Text('Go to Second Screen'))));}
class SecondScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Second Screen')),body:Center(child:Text('Welcome to Second Screen')));}
