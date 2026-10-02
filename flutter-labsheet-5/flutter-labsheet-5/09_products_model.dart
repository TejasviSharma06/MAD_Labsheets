import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:Products()));
class Product{String name; double price; Product(this.name,this.price);}
class Products extends StatelessWidget{Products({super.key}); final List<Product> products=[Product('Laptop',55000),Product('Phone',25000),Product('Headphones',2000),Product('Keyboard',1500)]; @override Widget build(BuildContext c)=>Scaffold(appBar:AppBar(title:Text('Products')),body:ListView.builder(itemCount:products.length,itemBuilder:(c,i)=>ListTile(title:Text(products[i].name),subtitle:Text('₹${products[i].price}'))));}
