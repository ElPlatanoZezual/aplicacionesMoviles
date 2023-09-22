import 'package:flutter/material.dart';
import 'products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.fastfood, color: Colors.orange,),
        title: Row(
          children: [
            Text('USM', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
            Text(' Eats', style: TextStyle(color: Colors.orange))
            ]
        ),
      ),
      body: Container(
        child: ListView(
          children: productos.map((producto){
        return Column(

          )

          }).toList()
            
        ),
      )
    );
  }
}