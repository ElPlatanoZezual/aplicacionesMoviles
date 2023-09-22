import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloNumero = TextStyle(color: Color(0xff026597), fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Jack Banana'),
        leading: Icon(Icons.android),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin:  EdgeInsets.all(10),
            color: Colors.grey,
            child: Row(
              children: [
                Icon(Icons.account_circle, size: 50,), Text('Nombre del alumno', style: TextStyle(fontSize: 15,)),
              ],
            
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            child: Text('Universidad Federico Santa Maria', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
                child: Column(
                  children: [
                    Text('5', style: estiloNumero), 
                    Row(
                      children: [
                        Icon(Icons.account_balance, color: Colors.red,), Text('Emplazamientos')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2)),
                child: Column(
                  children: [
                    Text('49', style: estiloNumero), 
                    Row(
                      children: [
                        Icon(Icons.auto_stories,  color: Colors.red), Text('Carreras')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2)),
                child: Column(
                  children: [
                    Text('22.404', style: estiloNumero), 
                    Row(
                      children: [
                        Icon(Icons.person,  color: Colors.red), Text('Estudiantes')
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
    
  }
}