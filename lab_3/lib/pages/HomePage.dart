import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController valorCtrl1 = new TextEditingController(text: '0');
  TextEditingController montoCtrl1 = new TextEditingController(text: '0');
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio clase 3'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Container(
            padding:EdgeInsets.all(8),
            color: Colors.deepOrange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.currency_exchange, color: Colors.white,),
                Text('Conversor de USD a CLP')
              ],
            ),
          ),
          Container(
            child: TextFormField(
              controller: valorCtrl1,
              textAlign: TextAlign.right,
              decoration: InputDecoration(labelText: 'Valor CLP en 1 USD'),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            child: TextFormField(
              controller: montoCtrl1,
              textAlign: TextAlign.right,
              decoration: InputDecoration(labelText: 'Monto USD'),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            child: FilledButton(
              child: Text('Calcular CLP'),
              onPressed: () {
                int valor = int.tryParse(valorCtrl1.text) ?? 0;
                int monto = int.tryParse(montoCtrl1.text) ?? 0;
                setState(() {
                  resultado = valor * monto;
                });
              },
            ),
          ),
          Container(
            child: Text('Resultado: $resultado'),
          )
        ],
      ),
    );
  }
}