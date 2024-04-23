import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity, // largura
      margin: EdgeInsets.all(10), // margem
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center, //Alinhamento do texto
      ),
    );
  }
}