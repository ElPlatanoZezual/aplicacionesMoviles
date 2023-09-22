import 'package:flutter/material.dart';
import '../widgets/listviewer.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.android),
        title: Row(
          children: [
            Text('Hola', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold), ),
            Text(' mundo', style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            listviewer(
              texto: 'Ir a bodedga',
              destino: '/bodega',
            ),
            listviewer(
              texto: 'Ir a ventas',
              destino: '/ventas',
            )
          ],
        ),),
        
    );
  }
}