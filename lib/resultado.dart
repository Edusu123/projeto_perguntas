import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 8)
      return 'Parabéns!';
    else if (pontuacao < 12)
      return 'Você é bom!';
    else if (pontuacao < 16)
      return 'Impressionante!';
    else
      return 'Demais!';
  }

  Resultado(this.pontuacao);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
