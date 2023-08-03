import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Exercicio1(),
    );
  }
}

class Exercicio1 extends StatefulWidget {
  @override
  _IconMovelState createState() => _IconMovelState();
}

class _IconMovelState extends State<Exercicio1> {
  // Inicializa a posição do ícone no centro da tela
  double _x = 0;

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
              width: 600,
              height: 300,
              color: Colors.blue,
              child: Text('$_x'),
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
                  if (_x >= 100) {
                    _x = 100;
                  } else if (_x < 0) {
                    _x = 0;
                  }
                });
              },
              child: Icon(
                Icons.touch_app,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
