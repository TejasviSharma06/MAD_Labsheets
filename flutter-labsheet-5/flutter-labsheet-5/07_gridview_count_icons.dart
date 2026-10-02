import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(appBar:AppBar(title:Text('Icon Grid')),body:GridView.count(crossAxisCount:3,children:[Icons.home,Icons.person,Icons.favorite,Icons.star,Icons.settings,Icons.phone,Icons.email,Icons.camera,Icons.school].map((i)=>Card(child:Icon(i,size:40))).toList()))));
