import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:MyApp()));
class MyApp extends StatelessWidget{const MyApp({super.key}); @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('StatelessWidget')),body:Center(child:Text('This widget does not change.',style:TextStyle(fontSize:22))));}
