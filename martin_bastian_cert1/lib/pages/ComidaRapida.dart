import 'package:flutter/material.dart';
import 'package:flutter/martin_bastian_cert1/widgets/producto.dart';

class ComidaRapida extends StatelessWidget {
  const ComidaRapida({super.key});

  @override
  State<ComidaRapida> createState() => _ComidaRapidaState();}

class ComidaRapida extends State<_ComidaRapidaState> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        producto(
        );
      ],
    );
  }
}