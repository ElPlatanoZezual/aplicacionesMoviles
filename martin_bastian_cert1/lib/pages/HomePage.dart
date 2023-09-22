import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'Acompanamientos.dart';
import 'Bebidas.dart';
import 'ComidaRapida.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF152227),
          leading: Icon(MdiIcons.foodOutline, color: Colors.yellow),
          bottom: TabBar(tabs: [
            Text('Comida rapida'),
            Text('Acompañamientos'),
            Text('Bebidas')
          ],

          ),
          title: Row(
            children: [
              Text('USM', style: TextStyle(color: Colors.white),),
              Text('Eats', style: TextStyle(color: Colors.yellow),)
            ],
          ),
        ),
        body: 
        Padding(padding: EdgeInsets.all(5),
          child: TabBarView(
            children: [
              ComidaRapida(),
              Acompanamientos(),
              Bebidas()
            ],
          ),
        ),
      ),
    );
  }
}