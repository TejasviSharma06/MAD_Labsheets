import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:NavigationApp()));
class NavigationApp extends StatefulWidget{State<NavigationApp> createState()=>_NavigationAppState();}
class _NavigationAppState extends State<NavigationApp>{int selected=0;final pages=[Center(child:Text('Home')),Center(child:Text('Profile')),Center(child:Text('Settings'))];Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Three Screens')),body:pages[selected],bottomNavigationBar:BottomNavigationBar(currentIndex:selected,onTap:(v)=>setState(()=>selected=v),items:[BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile'),BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Settings')]));}
