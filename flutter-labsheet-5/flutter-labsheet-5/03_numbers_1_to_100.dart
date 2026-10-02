import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(appBar:AppBar(title:Text('1 to 100')),body:ListView.builder(itemCount:100,itemBuilder:(context,index)=>ListTile(title:Text('${index+1}'))))));
