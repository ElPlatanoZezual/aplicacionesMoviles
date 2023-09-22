import 'package:flutter/material.dart';

class listviewer extends StatelessWidget {
  final String? texto;
  final String destino;

  listviewer({this.texto, this.destino = '/'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FilledButton(
        child: Row(
          children: [
            Text(this.texto ?? 'Sin Titulo')
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, this.destino);
        },    
        ),
      );
  }
}