import 'package:flutter/material.dart';

class list_tile extends StatelessWidget {
  final String? asd;
  final String? titulo;
  final String? subtitulo;
  final IconData icono;
  final String? precio;

  list_tile({this.asd, this.titulo, this.subtitulo, this.icono = Icons.android, this.precio});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(this.asd ?? 'sin titulo'),
          title: Text(this.titulo ?? 'sin titulo'),
          subtitle: Text(this.subtitulo ?? 'sin titulo'),
          trailing: Column(
            children: [
              Icon(this.icono, size: 35, color: Colors.deepOrange),
              Text(this.precio ?? 'sin precio')
            ],
          ),)
      ],
      
    );
  }
}