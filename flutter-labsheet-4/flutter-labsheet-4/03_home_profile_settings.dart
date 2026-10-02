import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:HomeScreen()));
class HomeScreen extends StatelessWidget{void open(BuildContext c,Widget p)=>Navigator.push(c,MaterialPageRoute(builder:(_)=>p)); Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Home')),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[ElevatedButton(onPressed:()=>open(c,ProfileScreen()),child:Text('Profile')),ElevatedButton(onPressed:()=>open(c,SettingsScreen()),child:Text('Settings'))])));}
class ProfileScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Profile')),body:Center(child:Text('Profile Screen')));}
class SettingsScreen extends StatelessWidget{Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Settings')),body:Center(child:Text('Settings Screen')));}
