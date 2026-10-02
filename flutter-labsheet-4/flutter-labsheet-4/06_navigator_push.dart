import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:HomeScreen()));
class HomeScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Navigator Push')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>NewScreen())),child:Text('Open New Screen'))));}
class NewScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('New Screen')),body:Center(child:Text('New Screen')));}
