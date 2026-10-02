import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:HomeScreen()));
class HomeScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Home')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>AboutScreen())),child:Text('About'))));}
class AboutScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('About')),body:Center(child:Text('About Screen')));}
