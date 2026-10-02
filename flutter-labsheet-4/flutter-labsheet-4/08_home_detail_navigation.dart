import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:HomeScreen()));
class HomeScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Home')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>DetailScreen())),child:Text('Open Detail'))));}
class DetailScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Detail')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.pop(c),child:Text('Back'))));}
