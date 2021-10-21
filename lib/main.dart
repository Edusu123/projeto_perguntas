import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('pergunta respondida');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('pergunta respondida dentro da função');
    };
  }

  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Text(perguntas[0]),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: funcaoQueRetornaUmaOutraFuncao(),
              ),
              ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: () => print('função dentro da elemento'),
              ),
            ],
          )),
    );
  }
}
