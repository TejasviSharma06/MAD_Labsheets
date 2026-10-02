import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(appBar:AppBar(title:Text('Separated List')),body:ListView.separated(itemCount:5,itemBuilder:(c,i)=>ListTile(title:Text('Item ${i+1}')),separatorBuilder:(c,i)=>Divider()))));
