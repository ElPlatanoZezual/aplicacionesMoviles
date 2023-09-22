import 'package:flutter/material.dart';

class producto extends StatelessWidget {
  final String? nombre;
  final String? descripcion;
  final String? precio;
  final Image? imagen;

  producto({this.nombre,this.descripcion,this.precio,this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Text(this.nombre ?? "Sin titulo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Text(this.descripcion ?? "Sin Descripcion"),
              Text(this.precio ?? "\$0.000")
            ],
          ),
          Container(
            child: Image.asset("lib/assets/${this.imagen}"),
          )
        ],
      ),
    );
  }
}