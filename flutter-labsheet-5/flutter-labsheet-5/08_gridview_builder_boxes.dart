import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Scaffold(appBar:AppBar(title:Text('Box Grid')),body:GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),itemCount:12,itemBuilder:(c,i)=>Container(margin:EdgeInsets.all(5),color:Colors.primaries[i%Colors.primaries.length]))))); 
