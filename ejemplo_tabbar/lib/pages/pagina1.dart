import 'package:ejemplo_tabbar/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class pagina1 extends StatelessWidget {
  const pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        list_tile(
          asd: 'leading 1',
          titulo: 'cosa 1',
          subtitulo: 'cosita 1',
          icono: MdiIcons.paletteOutline,
          precio: '4000',
        ),
        list_tile(
          asd: 'leading 2',
          titulo: 'cosa 2',
          subtitulo: 'cosita 2',
          icono: MdiIcons.accountHardHat,
          precio: '5.000',
        ),
        list_tile(
          asd: 'leading 3',
          titulo: 'cosa 3',
          subtitulo: 'cosita 3',
          icono: MdiIcons.boxCutterOff,
          precio: '6000',
        )
      ],
    );
  }
}