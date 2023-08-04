// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  @override
  _IconMovelState createState() => _IconMovelState();
}

class _IconMovelState extends State<Exercicio1> {
  // Inicializa a posição do ícone no centro da tela
  double _x = 0;
  double porcentagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ícone Móvel'),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 300,
              color: Colors.blue,
              child: Text('$porcentagem'),
            ),
          ),
          Positioned(
            // Define a posição do ícone com base nas variáveis _x e _y
            left: _x,
            child: GestureDetector(
              // O onPanUpdate será chamado quando o usuário arrastar o ícone
              onPanUpdate: (details) {
                setState(() {
                  // Atualiza a posição do ícone com base no arraste do usuário
                  _x += details.delta.dx;
                  if (500 >= 1000) {
                    _x = 1000;
                  } else if (_x < 500) {
                    _x = 500;
                  }
                  porcentagem += _x;
                });
              },
              child: Image.asset('lib/Exercicio14/Imagens/Guinnes.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
