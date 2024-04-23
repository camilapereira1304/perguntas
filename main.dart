import 'package:flutter/material.dart';
import './questão.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [

    {
      'texto': 'Qual é a sua cor favorita',
      'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco' ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas' : ['Coelho', 'Cobra', 'Elefante', 'Leão' ],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas' : ['Maria', 'João', 'Leo', 'Pedro' ],
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  bool get temPerguntSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
  @override
  Widget build(BuildContext context) {

    List<String> respostas = temPerguntSelecionada? _perguntas[_perguntaSelecionada].cast()['respostas']: null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntSelecionada ? Column(
          children: <Widget> [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}