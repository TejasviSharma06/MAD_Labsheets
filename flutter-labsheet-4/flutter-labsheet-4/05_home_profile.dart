import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:HomeScreen()));
class HomeScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Home')),body:Center(child:ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>ProfileScreen())),child:Text('Open Profile'))));}
class ProfileScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Profile')),body:Center(child:Text('Profile Screen')));}
