import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Names()));
class Names extends StatelessWidget{final List<String> names=['Tejasvi','Rahul','Priya','Aman','Neha']; Names({super.key}); @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Names')),body:ListView.builder(itemCount:names.length,itemBuilder:(c,i)=>ListTile(title:Text(names[i]))));}
